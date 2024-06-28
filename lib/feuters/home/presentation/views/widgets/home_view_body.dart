import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:paymob_payment_app/feuters/home/presentation/manager/get_payment_key_cubit/get_payment_key_cubit.dart';
import 'package:paymob_payment_app/feuters/home/presentation/views/payment_web_view.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            final String paymentKey =
                await BlocProvider.of<GetPaymentKeyCubit>(context)
                    .getPaymentKey(
              amount: 100,
            );
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => PaymentWebView(
                          paymentKey: paymentKey,
                        )));
          },
          child: const Text('Pay'),
        ),
      ),
    );
  }
}
