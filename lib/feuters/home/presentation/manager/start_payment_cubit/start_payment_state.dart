part of 'start_payment_cubit.dart';

@immutable
sealed class StartPaymentState {}

final class StartPaymentInitial extends StartPaymentState {}

final class StartPaymentLoadingState extends StartPaymentState {}

final class StartPaymentSuccessState extends StartPaymentState {}

final class StartPaymentFailureState extends StartPaymentState {
  final String errorMessage;
  StartPaymentFailureState({required this.errorMessage});
}
