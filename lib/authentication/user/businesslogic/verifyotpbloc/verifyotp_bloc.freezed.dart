// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verifyotp_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$VerifyotpEvent {
  String get otp => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String otp) checkOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String otp)? checkOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String otp)? checkOtp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_checkOtp value) checkOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_checkOtp value)? checkOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_checkOtp value)? checkOtp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VerifyotpEventCopyWith<VerifyotpEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyotpEventCopyWith<$Res> {
  factory $VerifyotpEventCopyWith(
          VerifyotpEvent value, $Res Function(VerifyotpEvent) then) =
      _$VerifyotpEventCopyWithImpl<$Res, VerifyotpEvent>;
  @useResult
  $Res call({String otp});
}

/// @nodoc
class _$VerifyotpEventCopyWithImpl<$Res, $Val extends VerifyotpEvent>
    implements $VerifyotpEventCopyWith<$Res> {
  _$VerifyotpEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otp = null,
  }) {
    return _then(_value.copyWith(
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$checkOtpImplCopyWith<$Res>
    implements $VerifyotpEventCopyWith<$Res> {
  factory _$$checkOtpImplCopyWith(
          _$checkOtpImpl value, $Res Function(_$checkOtpImpl) then) =
      __$$checkOtpImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String otp});
}

/// @nodoc
class __$$checkOtpImplCopyWithImpl<$Res>
    extends _$VerifyotpEventCopyWithImpl<$Res, _$checkOtpImpl>
    implements _$$checkOtpImplCopyWith<$Res> {
  __$$checkOtpImplCopyWithImpl(
      _$checkOtpImpl _value, $Res Function(_$checkOtpImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otp = null,
  }) {
    return _then(_$checkOtpImpl(
      null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$checkOtpImpl implements _checkOtp {
  const _$checkOtpImpl(this.otp);

  @override
  final String otp;

  @override
  String toString() {
    return 'VerifyotpEvent.checkOtp(otp: $otp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$checkOtpImpl &&
            (identical(other.otp, otp) || other.otp == otp));
  }

  @override
  int get hashCode => Object.hash(runtimeType, otp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$checkOtpImplCopyWith<_$checkOtpImpl> get copyWith =>
      __$$checkOtpImplCopyWithImpl<_$checkOtpImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String otp) checkOtp,
  }) {
    return checkOtp(otp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String otp)? checkOtp,
  }) {
    return checkOtp?.call(otp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String otp)? checkOtp,
    required TResult orElse(),
  }) {
    if (checkOtp != null) {
      return checkOtp(otp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_checkOtp value) checkOtp,
  }) {
    return checkOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_checkOtp value)? checkOtp,
  }) {
    return checkOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_checkOtp value)? checkOtp,
    required TResult orElse(),
  }) {
    if (checkOtp != null) {
      return checkOtp(this);
    }
    return orElse();
  }
}

abstract class _checkOtp implements VerifyotpEvent {
  const factory _checkOtp(final String otp) = _$checkOtpImpl;

  @override
  String get otp;
  @override
  @JsonKey(ignore: true)
  _$$checkOtpImplCopyWith<_$checkOtpImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$VerifyotpState {
  ApiResponse<LogInfo> get verify => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VerifyotpStateCopyWith<VerifyotpState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyotpStateCopyWith<$Res> {
  factory $VerifyotpStateCopyWith(
          VerifyotpState value, $Res Function(VerifyotpState) then) =
      _$VerifyotpStateCopyWithImpl<$Res, VerifyotpState>;
  @useResult
  $Res call({ApiResponse<LogInfo> verify});
}

/// @nodoc
class _$VerifyotpStateCopyWithImpl<$Res, $Val extends VerifyotpState>
    implements $VerifyotpStateCopyWith<$Res> {
  _$VerifyotpStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? verify = null,
  }) {
    return _then(_value.copyWith(
      verify: null == verify
          ? _value.verify
          : verify // ignore: cast_nullable_to_non_nullable
              as ApiResponse<LogInfo>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VerifyotpStateImplCopyWith<$Res>
    implements $VerifyotpStateCopyWith<$Res> {
  factory _$$VerifyotpStateImplCopyWith(_$VerifyotpStateImpl value,
          $Res Function(_$VerifyotpStateImpl) then) =
      __$$VerifyotpStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ApiResponse<LogInfo> verify});
}

/// @nodoc
class __$$VerifyotpStateImplCopyWithImpl<$Res>
    extends _$VerifyotpStateCopyWithImpl<$Res, _$VerifyotpStateImpl>
    implements _$$VerifyotpStateImplCopyWith<$Res> {
  __$$VerifyotpStateImplCopyWithImpl(
      _$VerifyotpStateImpl _value, $Res Function(_$VerifyotpStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? verify = null,
  }) {
    return _then(_$VerifyotpStateImpl(
      verify: null == verify
          ? _value.verify
          : verify // ignore: cast_nullable_to_non_nullable
              as ApiResponse<LogInfo>,
    ));
  }
}

/// @nodoc

class _$VerifyotpStateImpl implements _VerifyotpState {
  const _$VerifyotpStateImpl({required this.verify});

  @override
  final ApiResponse<LogInfo> verify;

  @override
  String toString() {
    return 'VerifyotpState(verify: $verify)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyotpStateImpl &&
            (identical(other.verify, verify) || other.verify == verify));
  }

  @override
  int get hashCode => Object.hash(runtimeType, verify);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyotpStateImplCopyWith<_$VerifyotpStateImpl> get copyWith =>
      __$$VerifyotpStateImplCopyWithImpl<_$VerifyotpStateImpl>(
          this, _$identity);
}

abstract class _VerifyotpState implements VerifyotpState {
  const factory _VerifyotpState({required final ApiResponse<LogInfo> verify}) =
      _$VerifyotpStateImpl;

  @override
  ApiResponse<LogInfo> get verify;
  @override
  @JsonKey(ignore: true)
  _$$VerifyotpStateImplCopyWith<_$VerifyotpStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
