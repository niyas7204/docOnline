import 'dart:convert';

DocterTrial docterTrialFromJson(Map<String, dynamic> str) =>
    DocterTrial.fromJson(str);

String docterTrialToJson(DocterTrial data) => json.encode(data.toJson());

class DocterTrial {
  bool? err;
  Doctor? doctor;
  bool? reviewAccess;
  int? rating;
  List<dynamic>? reviews;
  dynamic review;

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
            : List<dynamic>.from(json["reviews"]!.map((x) => x)),
        review: json["review"],
      );

  Map<String, dynamic> toJson() => {
        "err": err,
        "doctor": doctor?.toJson(),
        "reviewAccess": reviewAccess,
        "rating": rating,
        "reviews":
            reviews == null ? [] : List<dynamic>.from(reviews!.map((x) => x)),
        "review": review,
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
  String? url;
  String? secureUrl;

  Image({
    this.url,
    this.secureUrl,
  });

  factory Image.fromJson(Map<String, dynamic> json) => Image(
        url: json["url"],
        secureUrl: json["secure_url"],
      );

  Map<String, dynamic> toJson() => {
        "url": url,
        "secure_url": secureUrl,
      };
}
