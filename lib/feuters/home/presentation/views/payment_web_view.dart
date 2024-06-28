import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:paymob_payment_app/feuters/home/presentation/views/widgets/payment_web_view_body.dart';

class PaymentWebView extends StatelessWidget {
  const PaymentWebView({super.key, required this.paymentKey});
  final String paymentKey ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:  PaymentWebViewBody(paymentKey: paymentKey,),
    );
  }
}
