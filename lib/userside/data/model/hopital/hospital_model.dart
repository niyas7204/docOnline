// To parse this JSON data, do
//
//     final hospitalData = hospitalDataFromJson(jsonString);

import 'dart:convert';

HospitalData hospitalDataFromJson(Map<String, dynamic> str) =>
    HospitalData.fromJson(str);

String hospitalDataToJson(HospitalData data) => json.encode(data.toJson());
HospitalDeatails hospitalFromJson(Map<String, dynamic> str) =>
    HospitalDeatails.fromJson(str);

String hospitalDeatailsToJson(HospitalDeatails data) =>
    json.encode(data.toJson());

class HospitalData {
  bool? err;
  List<HospitalDeatails>? hospitals;
  Map<String, double>? rating;

  HospitalData({
    this.err,
    this.hospitals,
    this.rating,
  });

  factory HospitalData.fromJson(Map<String, dynamic> json) => HospitalData(
        err: json["err"],
        hospitals: json["hospitals"] == null
            ? []
            : List<HospitalDeatails>.from(
                json["hospitals"]!.map((x) => HospitalDeatails.fromJson(x))),
        rating: Map.from(json["rating"]!)
            .map((k, v) => MapEntry<String, double>(k, v?.toDouble())),
      );

  get doctors => null;

  Map<String, dynamic> toJson() => {
        "err": err,
        "hospitals": hospitals == null
            ? []
            : List<dynamic>.from(hospitals!.map((x) => x.toJson())),
        "rating":
            Map.from(rating!).map((k, v) => MapEntry<String, dynamic>(k, v)),
      };
}

class HospitalDeatails {
  String? id;
  String? name;
  String? email;
  String? about;
  String? address;
  String? place;
  Image? image;
  int? mobile;
  bool? active;
  int? v;
  bool? block;
  int? wallet;
  Image? proof;
  String? documentNo;
  bool? rejected;
  String? rejectedMessage;

  HospitalDeatails({
    this.id,
    this.name,
    this.email,
    this.about,
    this.address,
    this.place,
    this.image,
    this.mobile,
    this.active,
    this.v,
    this.block,
    this.wallet,
    this.proof,
    this.documentNo,
    this.rejected,
    this.rejectedMessage,
  });

  factory HospitalDeatails.fromJson(Map<String, dynamic> json) =>
      HospitalDeatails(
        id: json["_id"],
        name: json["name"],
        email: json["email"],
        about: json["about"],
        address: json["address"],
        place: json["place"],
        image: json["image"] == null ? null : Image.fromJson(json["image"]),
        mobile: json["mobile"],
        active: json["active"],
        v: json["__v"],
        block: json["block"],
        wallet: json["wallet"],
        proof: json["proof"] == null ? null : Image.fromJson(json["proof"]),
        documentNo: json["documentNo"],
        rejected: json["rejected"],
        rejectedMessage: json["rejectedMessage"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
        "email": email,
        "about": about,
        "address": address,
        "place": place,
        "image": image?.toJson(),
        "mobile": mobile,
        "active": active,
        "__v": v,
        "block": block,
        "wallet": wallet,
        "proof": proof?.toJson(),
        "documentNo": documentNo,
        "rejected": rejected,
        "rejectedMessage": rejectedMessage,
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
