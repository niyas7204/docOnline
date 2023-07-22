//     final bookingsModel = bookingsModelFromJson(jsonString);

import 'dart:convert';

BookingsModel bookingsModelFromJson(Map<String, dynamic> str) =>
    BookingsModel.fromJson(str);

String bookingsModelToJson(BookingsModel data) => json.encode(data.toJson());

class BookingsModel {
  bool? err;
  List<Booking>? bookings;

  BookingsModel({
    this.err,
    this.bookings,
  });

  factory BookingsModel.fromJson(Map<String, dynamic> json) => BookingsModel(
        err: json["err"],
        bookings: json["bookings"] == null
            ? []
            : List<Booking>.from(
                json["bookings"]!.map((x) => Booking.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "err": err,
        "bookings": bookings == null
            ? []
            : List<dynamic>.from(bookings!.map((x) => x.toJson())),
      };
}

class Booking {
  String? id;
  String? doctorId;
  String? userId;
  String? hospitalId;
  Payment? payment;
  DateTime? date;
  String? timeSlot;
  DateTime? time;
  int? fees;
  String? patientName;
  int? age;
  String? token;
  String? status;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? v;
  User? user;

  Booking({
    this.id,
    this.doctorId,
    this.userId,
    this.hospitalId,
    this.payment,
    this.date,
    this.timeSlot,
    this.time,
    this.fees,
    this.patientName,
    this.age,
    this.token,
    this.status,
    this.createdAt,
    this.updatedAt,
    this.v,
    this.user,
  });

  factory Booking.fromJson(Map<String, dynamic> json) => Booking(
        id: json["_id"],
        doctorId: json["doctorId"],
        userId: json["userId"],
        hospitalId: json["hospitalId"],
        payment:
            json["payment"] == null ? null : Payment.fromJson(json["payment"]),
        date: json["date"] == null ? null : DateTime.parse(json["date"]),
        timeSlot: json["timeSlot"],
        time: json["time"] == null ? null : DateTime.parse(json["time"]),
        fees: json["fees"],
        patientName: json["patientName"],
        age: json["age"],
        token: json["token"],
        status: json["status"],
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null
            ? null
            : DateTime.parse(json["updatedAt"]),
        v: json["__v"],
        user: json["user"] == null ? null : User.fromJson(json["user"]),
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "doctorId": doctorId,
        "userId": userId,
        "hospitalId": hospitalId,
        "payment": payment?.toJson(),
        "date": date?.toIso8601String(),
        "timeSlot": timeSlot,
        "time": time?.toIso8601String(),
        "fees": fees,
        "patientName": patientName,
        "age": age,
        "token": token,
        "status": status,
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "__v": v,
        "user": user?.toJson(),
      };
}

class Payment {
  String? razorpayPaymentId;
  String? razorpayOrderId;
  String? razorpaySignature;

  Payment({
    this.razorpayPaymentId,
    this.razorpayOrderId,
    this.razorpaySignature,
  });

  factory Payment.fromJson(Map<String, dynamic> json) => Payment(
        razorpayPaymentId: json["razorpay_payment_id"],
        razorpayOrderId: json["razorpay_order_id"],
        razorpaySignature: json["razorpay_signature"],
      );

  Map<String, dynamic> toJson() => {
        "razorpay_payment_id": razorpayPaymentId,
        "razorpay_order_id": razorpayOrderId,
        "razorpay_signature": razorpaySignature,
      };
}

class User {
  String? id;
  String? name;
  String? email;
  String? password;
  int? v;
  bool? block;
  String? picture;

  User({
    this.id,
    this.name,
    this.email,
    this.password,
    this.v,
    this.block,
    this.picture,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["_id"],
        name: json["name"],
        email: json["email"],
        password: json["password"],
        v: json["__v"],
        block: json["block"],
        picture: json["picture"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
        "email": email,
        "password": password,
        "__v": v,
        "block": block,
        "picture": picture,
      };
}
