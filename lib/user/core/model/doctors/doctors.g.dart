// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doctors.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DoctorsList _$DoctorsListFromJson(Map<String, dynamic> json) => DoctorsList(
      doctorsList: (json['doctors'] as List<dynamic>?)
              ?.map((e) => DocterData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$DoctorsListToJson(DoctorsList instance) =>
    <String, dynamic>{
      'doctors': instance.doctorsList,
    };

DocterData _$DocterDataFromJson(Map<String, dynamic> json) => DocterData(
      id: json['_id'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$DocterDataToJson(DocterData instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
    };
