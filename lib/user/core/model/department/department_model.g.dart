// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'department_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DepartmentsInfo _$DepartmentsInfoFromJson(Map<String, dynamic> json) =>
    DepartmentsInfo(
      departments: (json['departments'] as List<dynamic>?)
              ?.map((e) => DepartmentData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$DepartmentsInfoToJson(DepartmentsInfo instance) =>
    <String, dynamic>{
      'departments': instance.departments,
    };

DepartmentData _$DepartmentDataFromJson(Map<String, dynamic> json) =>
    DepartmentData(
      id: json['_id'] as String?,
      name: json['name'] as String?,
      hopitalid: (json['hospitalId'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$DepartmentDataToJson(DepartmentData instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'hospitalId': instance.hopitalid,
    };
