import 'package:doc_online/doctorside/data/data_providers/response/api_response.dart';
import 'package:doc_online/userside/data/model/booking/orderresponse.dart';
import 'package:doc_online/userside/data/repository/data_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_event.dart';
part 'payment_state.dart';
part 'payment_bloc.freezed.dart';

class PaymentBloc extends Bloc<PaymentEvent, PaymentState> {
  final BookingService bookingService;
  PaymentBloc(this.bookingService) : super(PaymentState.initial()) {
    on<PaymentEvent>((event, emit) async {
      emit(state.copyWith(orderResponse: ApiResponse.loading()));

      final response = await bookingService.getOrder(fee: event.fee!);
      emit(response.fold(
          (l) => state.copyWith(orderResponse: ApiResponse.error(l)),
          (r) => state.copyWith(orderResponse: ApiResponse.complete(r))));
    });
  }
}
