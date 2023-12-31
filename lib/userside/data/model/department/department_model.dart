// To parse this JSON data, do
//
//     final departmentsInfo = departmentsInfoFromJson(jsonString);

import 'dart:convert';

DepartmentsInfo departmentsInfoFromJson(Map<String, dynamic> str) =>
    DepartmentsInfo.fromJson(str);

String departmentsInfoToJson(DepartmentsInfo data) =>
    json.encode(data.toJson());

class DepartmentsInfo {
  bool? err;
  List<Department>? departments;

  DepartmentsInfo({
    this.err,
    this.departments,
  });

  factory DepartmentsInfo.fromJson(Map<String, dynamic> json) =>
      DepartmentsInfo(
        err: json["err"],
        departments: json["departments"] == null
            ? []
            : List<Department>.from(
                json["departments"]!.map((x) => Department.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "err": err,
        "departments": departments == null
            ? []
            : List<dynamic>.from(departments!.map((x) => x.toJson())),
      };
}

class Department {
  String? id;
  String? name;
  int? v;
  List<String>? hospitalId;

  Department({
    this.id,
    this.name,
    this.v,
    this.hospitalId,
  });

  factory Department.fromJson(Map<String, dynamic> json) => Department(
        id: json["_id"],
        name: json["name"],
        v: json["__v"],
        hospitalId: json["hospitalId"] == null
            ? []
            : List<String>.from(json["hospitalId"]!.map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
        "__v": v,
        "hospitalId": hospitalId == null
            ? []
            : List<dynamic>.from(hospitalId!.map((x) => x)),
      };
}
