part of 'payment_bloc.dart';

@freezed
class PaymentState with _$PaymentState {
  const factory PaymentState(
      {required ApiResponse<OrderResponseModel>? orderResponse}) = paymentState;
  factory PaymentState.initial() => const paymentState(orderResponse: null);
}
