import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:paymob_payment_app/core/utils/api_service.dart';
import 'package:paymob_payment_app/core/utils/bloc_observer.dart';
import 'package:paymob_payment_app/core/utils/paymob_service.dart';
import 'package:paymob_payment_app/feuters/home/presentation/manager/get_payment_key_cubit/get_payment_key_cubit.dart';
import 'package:paymob_payment_app/feuters/home/presentation/manager/start_payment_cubit/start_payment_cubit.dart';
import 'package:paymob_payment_app/feuters/home/presentation/views/home_view.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => GetPaymentKeyCubit(
              PaymobService(apiService: ApiService(dio: Dio()))),
        ),
        BlocProvider(
          create: (context) => StartPaymentCubit(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const HomeView(),
      ),
    );
  }
}
