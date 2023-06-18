// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LogInfo _$LogInfoFromJson(Map<String, dynamic> json) => LogInfo(
      error: json['err'] as bool?,
      token: json['token'] as String?,
    )..message = json['message'] as String?;

Map<String, dynamic> _$LogInfoToJson(LogInfo instance) => <String, dynamic>{
      'err': instance.error,
      'token': instance.token,
      'message': instance.message,
    };
