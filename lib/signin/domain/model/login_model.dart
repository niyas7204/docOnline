import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_model.freezed.dart';
part 'login_model.g.dart';

@freezed
class LogInfo with _$LogInfo {
  const factory LogInfo(
      {@JsonKey(name: 'err') required bool? error,
      @JsonKey(name: 'message') required String? message}) = _LogInfo;

  factory LogInfo.fromJson(Map<String, dynamic> json) =>
      _$LogInfoFromJson(json);
}
