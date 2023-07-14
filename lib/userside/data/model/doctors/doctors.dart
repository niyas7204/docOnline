
// To parse this JSON data, do
//
//     final doctorByDepartment = doctorByDepartmentFromJson(jsonString);

import 'dart:convert';

DoctorByDepartment doctorByDepartmentFromJson(Map<String, dynamic> str) =>
    DoctorByDepartment.fromJson(str);

String doctorByDepartmentToJson(DoctorByDepartment data) =>
    json.encode(data.toJson());

class DoctorByDepartment {
  bool? err;
  List<Doctors>? doctors;
  Map<String, int>? rating;

  DoctorByDepartment({
    this.err,
    this.doctors,
    this.rating,
  });

  factory DoctorByDepartment.fromJson(Map<String, dynamic> json) =>
      DoctorByDepartment(
        err: json["err"],
        doctors: json["doctors"] == null
            ? []
            : List<Doctors>.from(
                json["doctors"]!.map((x) => Doctors.fromJson(x))),
        rating: Map.from(json["rating"]!)
            .map((k, v) => MapEntry<String, int>(k, v)),
      );

  Map<String, dynamic> toJson() => {
        "err": err,
        "doctors": doctors == null
            ? []
            : List<dynamic>.from(doctors!.map((x) => x.toJson())),
        "rating":
            Map.from(rating!).map((k, v) => MapEntry<String, dynamic>(k, v)),
      };
}

class Doctors {
  String? id;
  String? name;
  Department? hospitalId;
  String? email;
  Department? department;
  String? qualification;
  String? specialization;
  String? about;
  Image? doctorImage;
  bool? block;
  int? fees;
  int? v;
  String? tags;

  Doctors({
    this.id,
    this.name,
    this.hospitalId,
    this.email,
    this.department,
    this.qualification,
    this.specialization,
    this.about,
    this.doctorImage,
    this.block,
    this.fees,
    this.v,
    this.tags,
  });

  factory Doctors.fromJson(Map<String, dynamic> json) => Doctors(
        id: json["_id"],
        name: json["name"],
        hospitalId: json["hospitalId"] == null
            ? null
            : Department.fromJson(json["hospitalId"]),
        email: json["email"],
        department: json["department"] == null
            ? null
            : Department.fromJson(json["department"]),
        qualification: json["qualification"],
        specialization: json["specialization"],
        about: json["about"],
        doctorImage:
            json["image"] == null ? null : Image.fromJson(json["image"]),
        block: json["block"],
        fees: json["fees"],
        v: json["__v"],
        tags: json["tags"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
        "hospitalId": hospitalId?.toJson(),
        "email": email,
        "department": department?.toJson(),
        "qualification": qualification,
        "specialization": specialization,
        "about": about,
        "image": doctorImage?.toJson(),
        "block": block,
        "fees": fees,
        "__v": v,
        "tags": tags,
      };
}

class Department {
  String? id;
  String? name;

  Department({
    this.id,
    this.name,
  });

  factory Department.fromJson(Map<String, dynamic> json) => Department(
        id: json["_id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
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
