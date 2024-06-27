import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:paymob_payment_app/core/utils/paymob_service.dart';
import 'package:paymob_payment_app/feuters/home/data/models/Init_payment/payment_key_input_model/billing_data.dart';

part 'get_payment_key_state.dart';

class GetPaymentKeyCubit extends Cubit<GetPaymentKeyState> {
  GetPaymentKeyCubit(this._paymobService) : super(GetPaymentKeyInitial());
  final PaymobService _paymobService;
  Future<void> getPaymentKey({
    required int amount,
    required BillingData billingInputData,
  }) async {
    emit(GetPaymentKeyLoadingState());
    try {
      String paymentKey = await _paymobService.getPaymentKey(
        amount: amount,
        billingInputData: billingInputData,
      );
      emit(GetPaymentKeySuccessState(paymentKey: paymentKey));
    } catch (e) {
      emit(GetPaymentKeyFailureState(errorMessage: e.toString()));
    }
  }
}
