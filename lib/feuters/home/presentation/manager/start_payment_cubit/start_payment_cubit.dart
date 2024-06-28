import 'package:bloc/bloc.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:meta/meta.dart';

part 'start_payment_state.dart';

class StartPaymentCubit extends Cubit<StartPaymentState> {
  StartPaymentCubit() : super(StartPaymentInitial());
  InAppWebViewController? webViewController;
  Future<void> startPayment({
    required String paymentKey,
  }) async {
    emit(StartPaymentLoadingState());
    try {
      webViewController?.loadUrl(
        urlRequest: URLRequest(
          url: WebUri.uri(
            Uri.parse(
                'https://accept.paymob.com/api/acceptance/iframes/853367?payment_token=$paymentKey'),
          ),
        ),
      );
      emit(StartPaymentSuccessState());
    } catch (e) {
      emit(StartPaymentFailureState(errorMessage: e.toString()));
    }
  }
}
