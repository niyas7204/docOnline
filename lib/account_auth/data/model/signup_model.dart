import 'package:json_annotation/json_annotation.dart';
part 'signup_model.g.dart';

@JsonSerializable()
class SignupInfo {
  @JsonKey(name: 'err')
  bool? error;
  @JsonKey(name: 'tempToken')
  String? token;
  @JsonKey(name: 'message')
  String? message;

  SignupInfo({this.error, this.token});
  factory SignupInfo.fromJson(Map<String, dynamic> json) =>
      _$SignupInfoFromJson(json);
}
