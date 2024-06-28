import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class SuccessPaymentView extends StatelessWidget {
  const SuccessPaymentView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text(
          'Success',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.green,
          ),
        ),
      ),
    );
  }
}
