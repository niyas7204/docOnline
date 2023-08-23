// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignupInfo _$SignupInfoFromJson(Map<String, dynamic> json) => SignupInfo(
      error: json['err'] as bool?,
      token: json['tempToken'] as String?,
    )..message = json['message'] as String?;

Map<String, dynamic> _$SignupInfoToJson(SignupInfo instance) =>
    <String, dynamic>{
      'err': instance.error,
      'tempToken': instance.token,
      'message': instance.message,
    };
