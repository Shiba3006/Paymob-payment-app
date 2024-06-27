import 'package:paymob_payment_app/core/utils/api_service.dart';
import 'package:paymob_payment_app/core/utils/secret_keys.dart';
import 'package:paymob_payment_app/feuters/home/data/models/Init_payment/order_id_input_model/order_id_input_model.dart';
import 'package:paymob_payment_app/feuters/home/data/models/Init_payment/payment_key_input_model/billing_data.dart';
import 'package:paymob_payment_app/feuters/home/data/models/Init_payment/payment_key_input_model/payment_key_input_model.dart';

class PaymobService {
  PaymobService({required ApiService apiService}) : _apiService = apiService;
  final ApiService _apiService;

  Future<String> getPaymentKey({
    required int amount,
    required BillingData billingInputData,
  }) async {
    String token = await _getAuthToken();
      int orderId = await _getOrderId(
        orderIdInputModel: OrderIdInputModel(
          authToken: token,
          deliveryNeeded: 'false',
          amountCents: (amount * 100).toString(),
          currency: 'EGP',
          items: [],
        ),
      );
      String paymentKey = await _getPaymentKey(
        paymentKeyInputModel: PaymentKeyInputModel(
          authToken: token,
          amountCents: (amount * 100).toString(),
          expiration: 3600,
          orderId: orderId.toString(),
          currency: 'EGP',
          integrationId: SecretKeys.integrationId,
          billingData: billingInputData,
          /*
          billingData: BillingData(
            firstName: 'Noh',
            lastName: 'Shehab',
            email: 'Example@ex.com',
            phoneNumber: '0123456789',
            apartment: 'NA',
            floor: 'NA',
            street: 'NA',
            building: 'NA',
            shippingMethod: 'NA',
            postalCode: 'NA',
            city: 'NA',
            country: 'NA',
            state: 'NA',
          ),
          */
        ),
      );
      return paymentKey;
  }

  Future<String> _getAuthToken() async {
    final response = await _apiService.post(
      endpoint: '/auth/tokens',
      data: {
        'api_key': SecretKeys.apiKey,
      },
    );
    return response.data['token'];
  }

  Future<int> _getOrderId({
    required OrderIdInputModel orderIdInputModel,
  }) async {
    final response = await _apiService.post(
      endpoint: '/ecommerce/orders',
      data: {
        'auth_token': orderIdInputModel.authToken,
        "delivery_needed": orderIdInputModel.deliveryNeeded, // string
        "amount_cents": orderIdInputModel.amountCents, // string
        "currency": orderIdInputModel.currency, // string
        "items": orderIdInputModel.items, // can be impty []
      },
    );
    return response.data['id'];
  }

  Future<String> _getPaymentKey({
    required PaymentKeyInputModel paymentKeyInputModel,
  }) async {
    final response = await _apiService.post(
      endpoint: '/acceptance/payment_keys',
      data: paymentKeyInputModel.toJson(),
    );
    return response.data['token'];
  }
}
