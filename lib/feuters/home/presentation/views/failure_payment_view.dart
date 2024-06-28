import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class FailurePaymentView extends StatelessWidget {
  const FailurePaymentView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text(
          'Failed',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
