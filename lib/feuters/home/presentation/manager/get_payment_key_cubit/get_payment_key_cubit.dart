import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:paymob_payment_app/core/utils/paymob_service.dart';
import 'package:paymob_payment_app/feuters/home/data/models/Init_payment/payment_key_input_model/billing_data.dart';

part 'get_payment_key_state.dart';

class GetPaymentKeyCubit extends Cubit<GetPaymentKeyState> {
  GetPaymentKeyCubit(this._paymobService) : super(GetPaymentKeyInitial());
  final PaymobService _paymobService;
  Future<String> getPaymentKey({
    required int amount,
  }) async {
    emit(GetPaymentKeyLoadingState());
    try {
      String paymentKey = await _paymobService.getPaymentKey(
        amount: amount,
        billingInputData: BillingData(
          apartment: 'NA',
          email: 'email',
          floor: 'NA',
          firstName: 'Shehab',
          street: 'NA',
          building: 'NA',
          phoneNumber: 'phoneNumber',
          shippingMethod: 'NA',
          postalCode: 'NA',
          city: 'NA',
          country: 'NA',
          lastName: 'Ahmed',
          state: 'NA',
        ),
      );

      emit(GetPaymentKeySuccessState(paymentKey: paymentKey));
      return paymentKey;
    } catch (e) {
      emit(GetPaymentKeyFailureState(errorMessage: e.toString()));
      rethrow;
    }
  }
}
