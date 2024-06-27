part of 'get_payment_key_cubit.dart';

@immutable
sealed class GetPaymentKeyState {}

final class GetPaymentKeyInitial extends GetPaymentKeyState {}

final class GetPaymentKeyLoadingState extends GetPaymentKeyState {}

final class GetPaymentKeySuccessState extends GetPaymentKeyState {
  final String paymentKey;
  GetPaymentKeySuccessState({required this.paymentKey});
}

final class GetPaymentKeyFailureState extends GetPaymentKeyState {
  final String errorMessage;
  GetPaymentKeyFailureState({required this.errorMessage});
}
