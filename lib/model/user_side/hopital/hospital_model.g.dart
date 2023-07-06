// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hospital_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HospitalResponse _$HospitalResponseFromJson(Map<String, dynamic> json) =>
    HospitalResponse(
      hopitals: (json['hospitals'] as List<dynamic>?)
              ?.map((e) => HospitalInfo.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$HospitalResponseToJson(HospitalResponse instance) =>
    <String, dynamic>{
      'hospitals': instance.hopitals,
    };

HospitalInfo _$HospitalInfoFromJson(Map<String, dynamic> json) => HospitalInfo(
      id: json['_id'] as String?,
      hospitalname: json['name'] as String?,
      hospitaladress: json['address'] as String?,
      place: json['place'] as String?,
      mobile: json['mobile'] as int?,
      hImage: json['image'] == null
          ? null
          : HospiatalImage.fromJson(json['image'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$HospitalInfoToJson(HospitalInfo instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.hospitalname,
      'address': instance.hospitaladress,
      'place': instance.place,
      'mobile': instance.mobile,
      'image': instance.hImage,
    };

HospiatalImage _$HospiatalImageFromJson(Map<String, dynamic> json) =>
    HospiatalImage(
      imageUrl: json['secure_url'] as String?,
    );

Map<String, dynamic> _$HospiatalImageToJson(HospiatalImage instance) =>
    <String, dynamic>{
      'secure_url': instance.imageUrl,
    };
