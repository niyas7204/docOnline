// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LogInfo _$LogInfoFromJson(Map<String, dynamic> json) => LogInfo(
      error: json['err'] as bool?,
      token: json['tempToken'] as String?,
    );

Map<String, dynamic> _$LogInfoToJson(LogInfo instance) => <String, dynamic>{
      'err': instance.error,
      'tempToken': instance.token,
    };
