import 'package:json_annotation/json_annotation.dart';
part 'login.g.dart';

@JsonSerializable()
class LogInfo {
  @JsonKey(name: 'err')
  bool? error;
  @JsonKey(name: 'tempToken')
  String? token;
  LogInfo({this.error, this.token});
  factory LogInfo.fromJson(Map<String, dynamic> json) =>
      _$LogInfoFromJson(json);
}
