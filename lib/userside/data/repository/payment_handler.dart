import 'dart:developer';
import 'package:doc_online/core/razerpay_key.dart';
import 'package:doc_online/userside/bussinesslogic/booking/booking_bloc.dart';

import 'package:doc_online/userside/data/dataprovider/booking_impl.dart';
import 'package:doc_online/userside/data/model/booking/check_time_model.dart';
import 'package:doc_online/userside/data/model/booking/orderresponse.dart';

import 'package:doc_online/userside/presentation/widgets/book_diologue.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:fluttertoast/fluttertoast.dart';

Future<void> getRazorPay(
    BuildContext context,
    int amount,
    Order state,
    String name,
    int age,
    List<Result> schedule,
    int dateIndex,
    int timeIndex,
    String docterId) async {
  final BookingImplimentation bookingImpl = BookingImplimentation();
  final Razorpay razorPay = Razorpay();
  log('enter');

  handlePaymentSuccess(PaymentSuccessResponse response) {
    log('handleSuccess');
    log('handele');
    final requestBody = {
      'response': {
        "razorpay_payment_id": response.paymentId,
        "razorpay_order_id": response.orderId,
        "razorpay_signature": response.signature
      },
      'bookDate': schedule[dateIndex].date!.toIso8601String(),
      'bookTimeSlot':
          "${schedule[dateIndex].schedule![timeIndex].startDate}-${schedule[dateIndex].schedule![timeIndex].endDate}",
      'bookingTime':
          schedule[dateIndex].schedule![timeIndex].time!.toIso8601String(),
      'name': name,
      'age': age,
      'doctorId': docterId,
      'fees': amount,
    };

    bookingImpl.paymentVerify(requestBody: requestBody);

    log('success');
    Fluttertoast.showToast(
      msg: "succes${response.paymentId!}",
    );
    context
        .read<PatientBookingBloc>()
        .add(const PatientBookingEvent.checkDateselection(index: null));
    context
        .read<PatientBookingBloc>()
        .add(const PatientBookingEvent.checkTimeselection(timeindex: null));
    popPage(context);
  }

  void handlePaymentError(PaymentFailureResponse response) {
    log('fail');
    Fluttertoast.showToast(
      msg: "fail: ${response.message}",
    );
  }

  void handleExternalWallet(ExternalWalletResponse response) {
    Fluttertoast.showToast(
      msg: "External Wallet${response.walletName}",
    );
  }

  intiateRazorPay() {
    razorPay.on(Razorpay.EVENT_PAYMENT_SUCCESS, handlePaymentSuccess);
    razorPay.on(Razorpay.EVENT_PAYMENT_ERROR, handlePaymentError);
    razorPay.on(Razorpay.EVENT_EXTERNAL_WALLET, handleExternalWallet);
  }

  log(state.id!.toString());
  if (state.id!.isNotEmpty) {
    var options = {
      'key': razorApikey,
      'amount': amount,
      'name': 'doconline',
      'order_id': state.id!,
      'description': 'Description for order',
      'timeout': 60,
    };
    try {
      razorPay.open(options);
      intiateRazorPay();
    } catch (e) {
      log('error$e');
    }
  }
}

nullIndexing(context) {
  BlocProvider.of<PatientBookingBloc>(context)
      .add(const PatientBookingEvent.checkTimeselection(timeindex: null));
}
