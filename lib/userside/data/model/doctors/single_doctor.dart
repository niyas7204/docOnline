// To parse this JSON data, do
//
//     final docterTrial = docterTrialFromJson(jsonString);

import 'dart:convert';

DocterTrial docterTrialFromJson(Map<String, dynamic> str) =>
    DocterTrial.fromJson(str);

String docterTrialToJson(DocterTrial data) => json.encode(data.toJson());

class DocterTrial {
  bool? err;
  Doctor? doctor;
  bool? reviewAccess;
  int? rating;
  List<ReviewElement>? reviews;
  PurpleReview? review;

  DocterTrial({
    this.err,
    this.doctor,
    this.reviewAccess,
    this.rating,
    this.reviews,
    this.review,
  });

  factory DocterTrial.fromJson(Map<String, dynamic> json) => DocterTrial(
        err: json["err"],
        doctor: json["doctor"] == null ? null : Doctor.fromJson(json["doctor"]),
        reviewAccess: json["reviewAccess"],
        rating: json["rating"],
        reviews: json["reviews"] == null
            ? []
            : List<ReviewElement>.from(
                json["reviews"]!.map((x) => ReviewElement.fromJson(x))),
        review: json["review"] == null
            ? null
            : PurpleReview.fromJson(json["review"]),
      );

  Map<String, dynamic> toJson() => {
        "err": err,
        "doctor": doctor?.toJson(),
        "reviewAccess": reviewAccess,
        "rating": rating,
        "reviews": reviews == null
            ? []
            : List<dynamic>.from(reviews!.map((x) => x.toJson())),
        "review": review?.toJson(),
      };
}

class Doctor {
  String? tags;
  String? id;
  String? name;
  HospitalId? hospitalId;
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
        hospitalId: json["hospitalId"] == null
            ? null
            : HospitalId.fromJson(json["hospitalId"]),
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
        "hospitalId": hospitalId?.toJson(),
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

class HospitalId {
  String? id;
  String? name;

  HospitalId({
    this.id,
    this.name,
  });

  factory HospitalId.fromJson(Map<String, dynamic> json) => HospitalId(
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

class PurpleReview {
  String? id;
  String? doctorId;
  String? userId;
  int? v;
  int? rating;
  String? review;

  PurpleReview({
    this.id,
    this.doctorId,
    this.userId,
    this.v,
    this.rating,
    this.review,
  });

  factory PurpleReview.fromJson(Map<String, dynamic> json) => PurpleReview(
        id: json["_id"],
        doctorId: json["doctorId"],
        userId: json["userId"],
        v: json["__v"],
        rating: json["rating"],
        review: json["review"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "doctorId": doctorId,
        "userId": userId,
        "__v": v,
        "rating": rating,
        "review": review,
      };
}

class ReviewElement {
  String? id;
  String? doctorId;
  UserId? userId;
  int? v;
  int? rating;
  String? review;

  ReviewElement({
    this.id,
    this.doctorId,
    this.userId,
    this.v,
    this.rating,
    this.review,
  });

  factory ReviewElement.fromJson(Map<String, dynamic> json) => ReviewElement(
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
