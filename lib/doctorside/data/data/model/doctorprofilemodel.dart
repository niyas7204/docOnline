// To parse this JSON data, do
//
//     final doctorProfileModel = doctorProfileModelFromJson(jsonString);

import 'dart:convert';

DoctorProfileModel doctorProfileModelFromJson(Map<String, dynamic> str) =>
    DoctorProfileModel.fromJson(str);

String doctorProfileModelToJson(DoctorProfileModel data) =>
    json.encode(data.toJson());

class DoctorProfileModel {
  Doctor? doctor;
  bool? err;
  List<Review>? reviews;

  DoctorProfileModel({
    this.doctor,
    this.err,
    this.reviews,
  });

  factory DoctorProfileModel.fromJson(Map<String, dynamic> json) =>
      DoctorProfileModel(
        doctor: json["doctor"] == null ? null : Doctor.fromJson(json["doctor"]),
        err: json["err"],
        reviews: json["reviews"] == null
            ? []
            : List<Review>.from(
                json["reviews"]!.map((x) => Review.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "doctor": doctor?.toJson(),
        "err": err,
        "reviews": reviews == null
            ? []
            : List<dynamic>.from(reviews!.map((x) => x.toJson())),
      };
}

class Doctor {
  String? tags;
  String? id;
  String? name;
  String? hospitalId;
  String? email;
  Department? department;
  String? qualification;
  String? specialization;
  String? about;
  Image? image;
  bool? block;
  int? fees;
  int? v;

  Doctor({
    this.tags,
    this.id,
    this.name,
    this.hospitalId,
    this.email,
    this.department,
    this.qualification,
    this.specialization,
    this.about,
    this.image,
    this.block,
    this.fees,
    this.v,
  });

  factory Doctor.fromJson(Map<String, dynamic> json) => Doctor(
        tags: json["tags"],
        id: json["_id"],
        name: json["name"],
        hospitalId: json["hospitalId"],
        email: json["email"],
        department: json["department"] == null
            ? null
            : Department.fromJson(json["department"]),
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
        "department": department?.toJson(),
        "qualification": qualification,
        "specialization": specialization,
        "about": about,
        "image": image?.toJson(),
        "block": block,
        "fees": fees,
        "__v": v,
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

class Review {
  String? id;
  String? doctorId;
  UserId? userId;
  int? v;
  int? rating;
  String? review;

  Review({
    this.id,
    this.doctorId,
    this.userId,
    this.v,
    this.rating,
    this.review,
  });

  factory Review.fromJson(Map<String, dynamic> json) => Review(
        id: json["_id"],
        doctorId: json["doctorId"],
        userId: json["userId"] == null ? null : UserId.fromJson(json["userId"]),
        v: json["__v"],
        rating: json["rating"],
        review: json["review"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "doctorId": doctorId,
        "userId": userId?.toJson(),
        "__v": v,
        "rating": rating,
        "review": review,
      };
}

class UserId {
  String? id;
  String? name;
  String? email;
  String? password;
  int? v;
  bool? block;
  String? picture;

  UserId({
    this.id,
    this.name,
    this.email,
    this.password,
    this.v,
    this.block,
    this.picture,
  });

  factory UserId.fromJson(Map<String, dynamic> json) => UserId(
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
