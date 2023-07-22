// To parse this JSON data, do
//
//     final checkTimeslot = checkTimeslotFromJson(jsonString);

import 'dart:convert';

CheckTimeslot checkTimeslotFromJson(Map<String, dynamic> str) =>
    CheckTimeslot.fromJson(str);

String checkTimeslotToJson(CheckTimeslot data) => json.encode(data.toJson());

class CheckTimeslot {
  bool? err;
  Result? result;

  CheckTimeslot({
    this.err,
    this.result,
  });

  factory CheckTimeslot.fromJson(Map<String, dynamic> json) => CheckTimeslot(
        err: json["err"],
        result: json["result"] == null ? null : Result.fromJson(json["result"]),
      );

  Map<String, dynamic> toJson() => {
        "err": err,
        "result": result?.toJson(),
      };
}

class Result {
  List<Schedule>? schedule;
  DateTime? date;

  Result({
    this.schedule,
    this.date,
  });

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        schedule: json["schedule"] == null
            ? []
            : List<Schedule>.from(
                json["schedule"]!.map((x) => Schedule.fromJson(x))),
        date: json["date"] == null ? null : DateTime.parse(json["date"]),
      );

  Map<String, dynamic> toJson() => {
        "schedule": schedule == null
            ? []
            : List<dynamic>.from(schedule!.map((x) => x.toJson())),
        "date": date?.toIso8601String(),
      };
}

class Schedule {
  String? startDate;
  DateTime? endDate;
  String? slot;
  DateTime? time;

  Schedule({
    this.startDate,
    this.endDate,
    this.slot,
    this.time,
  });

  factory Schedule.fromJson(Map<String, dynamic> json) => Schedule(
        startDate: json["startDate"],
        endDate:
            json["endDate"] == null ? null : DateTime.parse(json["endDate"]),
        slot: json["slot"],
        time: json["time"] == null ? null : DateTime.parse(json["time"]),
      );

  Map<String, dynamic> toJson() => {
        "startDate": startDate,
        "endDate": endDate?.toIso8601String(),
        "slot": slot,
        "time": time?.toIso8601String(),
      };
}
