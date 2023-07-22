// To parse this JSON data, do
//
//     final emrResponseModel = emrResponseModelFromJson(jsonString);

import 'dart:convert';

EmrResponseModel emrResponseModelFromJson(Map<String, dynamic> str) =>
    EmrResponseModel.fromJson(str);

String emrResponseModelToJson(EmrResponseModel data) =>
    json.encode(data.toJson());

class EmrResponseModel {
  bool? err;
  Emr? emr;

  EmrResponseModel({
    this.err,
    this.emr,
  });

  factory EmrResponseModel.fromJson(Map<String, dynamic> json) =>
      EmrResponseModel(
        err: json["err"],
        emr: json["emr"] == null ? null : Emr.fromJson(json["emr"]),
      );

  Map<String, dynamic> toJson() => {
        "err": err,
        "emr": emr?.toJson(),
      };
}

class Emr {
  String? id;
  String? bookingId;
  int? v;
  int? age;
  DateTime? date;
  DoctorId? doctorId;
  String? gender;
  String? patientName;
  String? prescription;
  String? userId;
  int? weight;
  DateTime? updatedAt;

  Emr({
    this.id,
    this.bookingId,
    this.v,
    this.age,
    this.date,
    this.doctorId,
    this.gender,
    this.patientName,
    this.prescription,
    this.userId,
    this.weight,
    this.updatedAt,
  });

  factory Emr.fromJson(Map<String, dynamic> json) => Emr(
        id: json["_id"],
        bookingId: json["bookingId"],
        v: json["__v"],
        age: json["age"],
        date: json["date"] == null ? null : DateTime.parse(json["date"]),
        doctorId: json["doctorId"] == null
            ? null
            : DoctorId.fromJson(json["doctorId"]),
        gender: json["gender"],
        patientName: json["patientName"],
        prescription: json["prescription"],
        userId: json["userId"],
        weight: json["weight"],
        updatedAt: json["updatedAt"] == null
            ? null
            : DateTime.parse(json["updatedAt"]),
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "bookingId": bookingId,
        "__v": v,
        "age": age,
        "date": date?.toIso8601String(),
        "doctorId": doctorId?.toJson(),
        "gender": gender,
        "patientName": patientName,
        "prescription": prescription,
        "userId": userId,
        "weight": weight,
        "updatedAt": updatedAt?.toIso8601String(),
      };
}

class DoctorId {
  String? tags;
  String? id;
  String? name;
  String? hospitalId;
  String? email;
  String? password;
  String? department;
  String? qualification;
  String? specialization;
  String? about;
  Image? image;
  bool? block;
  int? fees;
  int? v;

  DoctorId({
    this.tags,
    this.id,
    this.name,
    this.hospitalId,
    this.email,
    this.password,
    this.department,
    this.qualification,
    this.specialization,
    this.about,
    this.image,
    this.block,
    this.fees,
    this.v,
  });

  factory DoctorId.fromJson(Map<String, dynamic> json) => DoctorId(
        tags: json["tags"],
        id: json["_id"],
        name: json["name"],
        hospitalId: json["hospitalId"],
        email: json["email"],
        password: json["password"],
        department: json["department"],
        qualification: json["qualification"],
        specialization: json["specialization"],
        about: json["about"],
        image: json["image"] == null ? null : Image.fromJson(json["image"]),
        block: json["block"],
        fees: json["fees"],
        v: json["__v"],
      );

  Map<String, dynamic> toJson() => {
        "tags": tags,
        "_id": id,
        "name": name,
        "hospitalId": hospitalId,
        "email": email,
        "password": password,
        "department": department,
        "qualification": qualification,
        "specialization": specialization,
        "about": about,
        "image": image?.toJson(),
        "block": block,
        "fees": fees,
        "__v": v,
      };
}

class Image {
  String? assetId;
  String? publicId;
  int? version;
  String? versionId;
  String? signature;
  int? width;
  int? height;
  String? format;
  String? resourceType;
  DateTime? createdAt;
  List<dynamic>? tags;
  int? bytes;
  String? type;
  String? etag;
  bool? placeholder;
  String? url;
  String? secureUrl;
  String? folder;
  String? apiKey;

  Image({
    this.assetId,
    this.publicId,
    this.version,
    this.versionId,
    this.signature,
    this.width,
    this.height,
    this.format,
    this.resourceType,
    this.createdAt,
    this.tags,
    this.bytes,
    this.type,
    this.etag,
    this.placeholder,
    this.url,
    this.secureUrl,
    this.folder,
    this.apiKey,
  });

  factory Image.fromJson(Map<String, dynamic> json) => Image(
        assetId: json["asset_id"],
        publicId: json["public_id"],
        version: json["version"],
        versionId: json["version_id"],
        signature: json["signature"],
        width: json["width"],
        height: json["height"],
        format: json["format"],
        resourceType: json["resource_type"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        tags: json["tags"] == null
            ? []
            : List<dynamic>.from(json["tags"]!.map((x) => x)),
        bytes: json["bytes"],
        type: json["type"],
        etag: json["etag"],
        placeholder: json["placeholder"],
        url: json["url"],
        secureUrl: json["secure_url"],
        folder: json["folder"],
        apiKey: json["api_key"],
      );

  Map<String, dynamic> toJson() => {
        "asset_id": assetId,
        "public_id": publicId,
        "version": version,
        "version_id": versionId,
        "signature": signature,
        "width": width,
        "height": height,
        "format": format,
        "resource_type": resourceType,
        "created_at": createdAt?.toIso8601String(),
        "tags": tags == null ? [] : List<dynamic>.from(tags!.map((x) => x)),
        "bytes": bytes,
        "type": type,
        "etag": etag,
        "placeholder": placeholder,
        "url": url,
        "secure_url": secureUrl,
        "folder": folder,
        "api_key": apiKey,
      };
}
