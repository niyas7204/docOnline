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
abstract class _$$_checkOtpCopyWith<$Res>
    implements $VerifyotpEventCopyWith<$Res> {
  factory _$$_checkOtpCopyWith(
          _$_checkOtp value, $Res Function(_$_checkOtp) then) =
      __$$_checkOtpCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String otp});
}

/// @nodoc
class __$$_checkOtpCopyWithImpl<$Res>
    extends _$VerifyotpEventCopyWithImpl<$Res, _$_checkOtp>
    implements _$$_checkOtpCopyWith<$Res> {
  __$$_checkOtpCopyWithImpl(
      _$_checkOtp _value, $Res Function(_$_checkOtp) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otp = null,
  }) {
    return _then(_$_checkOtp(
      null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_checkOtp implements _checkOtp {
  const _$_checkOtp(this.otp);

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
            other is _$_checkOtp &&
            (identical(other.otp, otp) || other.otp == otp));
  }

  @override
  int get hashCode => Object.hash(runtimeType, otp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_checkOtpCopyWith<_$_checkOtp> get copyWith =>
      __$$_checkOtpCopyWithImpl<_$_checkOtp>(this, _$identity);

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
  const factory _checkOtp(final String otp) = _$_checkOtp;

  @override
  String get otp;
  @override
  @JsonKey(ignore: true)
  _$$_checkOtpCopyWith<_$_checkOtp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$VerifyotpState {
  bool get isLoading => throw _privateConstructorUsedError;
  LogInfo? get signUpResponse => throw _privateConstructorUsedError;
  Option<Either<MainFailure, LogInfo>> get failureOrSuccess =>
      throw _privateConstructorUsedError;

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
  $Res call(
      {bool isLoading,
      LogInfo? signUpResponse,
      Option<Either<MainFailure, LogInfo>> failureOrSuccess});
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
    Object? isLoading = null,
    Object? signUpResponse = freezed,
    Object? failureOrSuccess = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      signUpResponse: freezed == signUpResponse
          ? _value.signUpResponse
          : signUpResponse // ignore: cast_nullable_to_non_nullable
              as LogInfo?,
      failureOrSuccess: null == failureOrSuccess
          ? _value.failureOrSuccess
          : failureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, LogInfo>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VerifyotpStateCopyWith<$Res>
    implements $VerifyotpStateCopyWith<$Res> {
  factory _$$_VerifyotpStateCopyWith(
          _$_VerifyotpState value, $Res Function(_$_VerifyotpState) then) =
      __$$_VerifyotpStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      LogInfo? signUpResponse,
      Option<Either<MainFailure, LogInfo>> failureOrSuccess});
}

/// @nodoc
class __$$_VerifyotpStateCopyWithImpl<$Res>
    extends _$VerifyotpStateCopyWithImpl<$Res, _$_VerifyotpState>
    implements _$$_VerifyotpStateCopyWith<$Res> {
  __$$_VerifyotpStateCopyWithImpl(
      _$_VerifyotpState _value, $Res Function(_$_VerifyotpState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? signUpResponse = freezed,
    Object? failureOrSuccess = null,
  }) {
    return _then(_$_VerifyotpState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      signUpResponse: freezed == signUpResponse
          ? _value.signUpResponse
          : signUpResponse // ignore: cast_nullable_to_non_nullable
              as LogInfo?,
      failureOrSuccess: null == failureOrSuccess
          ? _value.failureOrSuccess
          : failureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, LogInfo>>,
    ));
  }
}

/// @nodoc

class _$_VerifyotpState implements _VerifyotpState {
  const _$_VerifyotpState(
      {required this.isLoading,
      this.signUpResponse,
      required this.failureOrSuccess});

  @override
  final bool isLoading;
  @override
  final LogInfo? signUpResponse;
  @override
  final Option<Either<MainFailure, LogInfo>> failureOrSuccess;

  @override
  String toString() {
    return 'VerifyotpState(isLoading: $isLoading, signUpResponse: $signUpResponse, failureOrSuccess: $failureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VerifyotpState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.signUpResponse, signUpResponse) ||
                other.signUpResponse == signUpResponse) &&
            (identical(other.failureOrSuccess, failureOrSuccess) ||
                other.failureOrSuccess == failureOrSuccess));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isLoading, signUpResponse, failureOrSuccess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VerifyotpStateCopyWith<_$_VerifyotpState> get copyWith =>
      __$$_VerifyotpStateCopyWithImpl<_$_VerifyotpState>(this, _$identity);
}

abstract class _VerifyotpState implements VerifyotpState {
  const factory _VerifyotpState(
      {required final bool isLoading,
      final LogInfo? signUpResponse,
      required final Option<Either<MainFailure, LogInfo>>
          failureOrSuccess}) = _$_VerifyotpState;

  @override
  bool get isLoading;
  @override
  LogInfo? get signUpResponse;
  @override
  Option<Either<MainFailure, LogInfo>> get failureOrSuccess;
  @override
  @JsonKey(ignore: true)
  _$$_VerifyotpStateCopyWith<_$_VerifyotpState> get copyWith =>
      throw _privateConstructorUsedError;
}
