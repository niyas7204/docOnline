part of 'payment_bloc.dart';

@freezed
class PaymentEvent with _$PaymentEvent {
  const factory PaymentEvent.getOrderOption({required int? fee}) =
      _getOrderOption;
}
