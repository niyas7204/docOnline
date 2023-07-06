import 'dart:convert';

DoctorSchedule doctorScheduleFromJson(Map<String, dynamic> str) =>
    DoctorSchedule.fromJson(str);

String doctorScheduleToJson(DoctorSchedule data) => json.encode(data.toJson());

class DoctorSchedule {
  bool? err;
  Schedule? schedule;

  DoctorSchedule({
    this.err,
    this.schedule,
  });

  factory DoctorSchedule.fromJson(Map<String, dynamic> json) => DoctorSchedule(
        err: json["err"],
        schedule: json["schedule"] == null
            ? null
            : Schedule.fromJson(json["schedule"]),
      );

  Map<String, dynamic> toJson() => {
        "err": err,
        "schedule": schedule?.toJson(),
      };
}

class Schedule {
  List<Mon>? fri;
  List<Mon>? mon;
  List<Mon>? sat;
  List<Mon>? sun;
  List<Mon>? thu;
  List<Mon>? tue;
  List<Mon>? wed;
  DateTime? updatedAt;

  Schedule({
    this.fri,
    this.mon,
    this.sat,
    this.sun,
    this.thu,
    this.tue,
    this.wed,
    this.updatedAt,
  });

  factory Schedule.fromJson(Map<String, dynamic> json) => Schedule(
        fri: json["fri"] == null
            ? []
            : List<Mon>.from(json["fri"]!.map((x) => x)),
        mon: json["mon"] == null
            ? []
            : List<Mon>.from(json["mon"]!.map((x) => Mon.fromJson(x))),
        sat: json["sat"] == null
            ? []
            : List<Mon>.from(json["sat"]!.map((x) => x)),
        sun: json["sun"] == null
            ? []
            : List<Mon>.from(json["sun"]!.map((x) => x)),
        thu: json["thu"] == null
            ? []
            : List<Mon>.from(json["thu"]!.map((x) => Mon.fromJson(x))),
        tue: json["tue"] == null
            ? []
            : List<Mon>.from(json["tue"]!.map((x) => Mon.fromJson(x))),
        wed: json["wed"] == null
            ? []
            : List<Mon>.from(json["wed"]!.map((x) => Mon.fromJson(x))),
        updatedAt: json["updatedAt"] == null
            ? null
            : DateTime.parse(json["updatedAt"]),
      );

  Map<String, dynamic> toJson() => {
        "fri": fri == null ? [] : List<dynamic>.from(fri!.map((x) => x)),
        "mon":
            mon == null ? [] : List<dynamic>.from(mon!.map((x) => x.toJson())),
        "sat": sat == null ? [] : List<dynamic>.from(sat!.map((x) => x)),
        "sun": sun == null ? [] : List<dynamic>.from(sun!.map((x) => x)),
        "thu":
            thu == null ? [] : List<dynamic>.from(thu!.map((x) => x.toJson())),
        "tue":
            tue == null ? [] : List<dynamic>.from(tue!.map((x) => x.toJson())),
        "wed":
            wed == null ? [] : List<dynamic>.from(wed!.map((x) => x.toJson())),
        "updatedAt": updatedAt?.toIso8601String(),
      };
}

class Mon {
  DateTime? startDate;
  DateTime? endDate;
  String? slot;

  Mon({
    this.startDate,
    this.endDate,
    this.slot,
  });

  factory Mon.fromJson(Map<String, dynamic> json) => Mon(
        startDate: json["startDate"] == null
            ? null
            : DateTime.parse(json["startDate"]),
        endDate:
            json["endDate"] == null ? null : DateTime.parse(json["endDate"]),
        slot: json["slot"],
      );

  Map<String, dynamic> toJson() => {
        "startDate": startDate?.toIso8601String(),
        "endDate": endDate?.toIso8601String(),
        "slot": slot,
      };
}
