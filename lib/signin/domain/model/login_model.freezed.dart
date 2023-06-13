// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LogInfo _$LogInfoFromJson(Map<String, dynamic> json) {
  return _LogInfo.fromJson(json);
}

/// @nodoc
mixin _$LogInfo {
  @JsonKey(name: 'err')
  bool? get error => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LogInfoCopyWith<LogInfo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogInfoCopyWith<$Res> {
  factory $LogInfoCopyWith(LogInfo value, $Res Function(LogInfo) then) =
      _$LogInfoCopyWithImpl<$Res, LogInfo>;
  @useResult
  $Res call(
      {@JsonKey(name: 'err') bool? error,
      @JsonKey(name: 'message') String? message});
}

/// @nodoc
class _$LogInfoCopyWithImpl<$Res, $Val extends LogInfo>
    implements $LogInfoCopyWith<$Res> {
  _$LogInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LogInfoCopyWith<$Res> implements $LogInfoCopyWith<$Res> {
  factory _$$_LogInfoCopyWith(
          _$_LogInfo value, $Res Function(_$_LogInfo) then) =
      __$$_LogInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'err') bool? error,
      @JsonKey(name: 'message') String? message});
}

/// @nodoc
class __$$_LogInfoCopyWithImpl<$Res>
    extends _$LogInfoCopyWithImpl<$Res, _$_LogInfo>
    implements _$$_LogInfoCopyWith<$Res> {
  __$$_LogInfoCopyWithImpl(_$_LogInfo _value, $Res Function(_$_LogInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? message = freezed,
  }) {
    return _then(_$_LogInfo(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LogInfo implements _LogInfo {
  const _$_LogInfo(
      {@JsonKey(name: 'err') required this.error,
      @JsonKey(name: 'message') required this.message});

  factory _$_LogInfo.fromJson(Map<String, dynamic> json) =>
      _$$_LogInfoFromJson(json);

  @override
  @JsonKey(name: 'err')
  final bool? error;
  @override
  @JsonKey(name: 'message')
  final String? message;

  @override
  String toString() {
    return 'LogInfo(error: $error, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LogInfo &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, error, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LogInfoCopyWith<_$_LogInfo> get copyWith =>
      __$$_LogInfoCopyWithImpl<_$_LogInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LogInfoToJson(
      this,
    );
  }
}

abstract class _LogInfo implements LogInfo {
  const factory _LogInfo(
      {@JsonKey(name: 'err') required final bool? error,
      @JsonKey(name: 'message') required final String? message}) = _$_LogInfo;

  factory _LogInfo.fromJson(Map<String, dynamic> json) = _$_LogInfo.fromJson;

  @override
  @JsonKey(name: 'err')
  bool? get error;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$_LogInfoCopyWith<_$_LogInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
