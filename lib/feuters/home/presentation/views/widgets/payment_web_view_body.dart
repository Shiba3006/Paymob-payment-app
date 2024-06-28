import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:paymob_payment_app/feuters/home/presentation/manager/start_payment_cubit/start_payment_cubit.dart';
import 'package:paymob_payment_app/feuters/home/presentation/views/failure_payment_view.dart';
import 'package:paymob_payment_app/feuters/home/presentation/views/success_payment_view.dart';

class PaymentWebViewBody extends StatelessWidget {
  const PaymentWebViewBody({super.key, required this.paymentKey});
  final String paymentKey;

  @override
  Widget build(BuildContext context) {
    return InAppWebView(
      initialSettings: InAppWebViewSettings(
        javaScriptEnabled: true,
      ),
      onWebViewCreated: (webViewController) {
        BlocProvider.of<StartPaymentCubit>(context).webViewController =
            webViewController;
        BlocProvider.of<StartPaymentCubit>(context)
            .startPayment(paymentKey: paymentKey);
      },
      onLoadStop: (controller, url) async {
        if (url == null) return;
        if (url.queryParameters['success'] == 'true') {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) {
            return const SuccessPaymentView();
          }));
        } else if (url.queryParameters['success'] == 'false') {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) {
            return const FailurePaymentView();
          }));
        }
      },
    );
  }
}
