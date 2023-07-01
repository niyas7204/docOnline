import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'hospital_model.g.dart';

@JsonSerializable()
class HospitalResponse {
  @JsonKey(name: 'hospitals')
  List<HospitalInfo> hopitals;
  HospitalResponse({this.hopitals = const []});
  factory HospitalResponse.fromJson(Map<String, dynamic> json) =>
      _$HospitalResponseFromJson(json);
}

@JsonSerializable()
class HospitalInfo {
  @JsonKey(name: '_id')
  String? id;
  @JsonKey(name: 'name')
  String? hospitalname;
  @JsonKey(name: 'address')
  String? hospitaladress;
  @JsonKey(name: 'place')
  String? place;
  @JsonKey(name: 'mobile')
  int? mobile;
  @JsonKey(name: 'image')
  HospiatalImage? hImage;
  HospitalInfo(
      {this.id,
      this.hospitalname,
      this.hospitaladress,
      this.place,
      this.mobile,
      this.hImage});
  factory HospitalInfo.fromJson(Map<String, dynamic> json) =>
      _$HospitalInfoFromJson(json);
}

@JsonSerializable()
class HospiatalImage {
  @JsonKey(name: 'secure_url')
  String? imageUrl;
  HospiatalImage({this.imageUrl});
  factory HospiatalImage.fromJson(Map<String, dynamic> json) =>
      _$HospiatalImageFromJson(json);
}
