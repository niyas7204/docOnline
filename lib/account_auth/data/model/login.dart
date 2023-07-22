import 'package:json_annotation/json_annotation.dart';
part 'login.g.dart';

@JsonSerializable()
class LogInfo {
  @JsonKey(name: 'err')
  bool? error;
  @JsonKey(name: 'token')
  String? token;
  @JsonKey(name: 'message')
  String? message;

  LogInfo({this.error, this.token});
  factory LogInfo.fromJson(Map<String, dynamic> json) =>
      _$LogInfoFromJson(json);
}
