// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forgotpassword_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ForgotpasswordEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) getOtp,
    required TResult Function(String otp) getVerifyRgister,
    required TResult Function(String password) getRgister,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? getOtp,
    TResult? Function(String otp)? getVerifyRgister,
    TResult? Function(String password)? getRgister,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? getOtp,
    TResult Function(String otp)? getVerifyRgister,
    TResult Function(String password)? getRgister,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getOtp value) getOtp,
    required TResult Function(_getVerifyRegister value) getVerifyRgister,
    required TResult Function(_getRegister value) getRgister,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getOtp value)? getOtp,
    TResult? Function(_getVerifyRegister value)? getVerifyRgister,
    TResult? Function(_getRegister value)? getRgister,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getOtp value)? getOtp,
    TResult Function(_getVerifyRegister value)? getVerifyRgister,
    TResult Function(_getRegister value)? getRgister,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotpasswordEventCopyWith<$Res> {
  factory $ForgotpasswordEventCopyWith(
          ForgotpasswordEvent value, $Res Function(ForgotpasswordEvent) then) =
      _$ForgotpasswordEventCopyWithImpl<$Res, ForgotpasswordEvent>;
}

/// @nodoc
class _$ForgotpasswordEventCopyWithImpl<$Res, $Val extends ForgotpasswordEvent>
    implements $ForgotpasswordEventCopyWith<$Res> {
  _$ForgotpasswordEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_getOtpCopyWith<$Res> {
  factory _$$_getOtpCopyWith(_$_getOtp value, $Res Function(_$_getOtp) then) =
      __$$_getOtpCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$_getOtpCopyWithImpl<$Res>
    extends _$ForgotpasswordEventCopyWithImpl<$Res, _$_getOtp>
    implements _$$_getOtpCopyWith<$Res> {
  __$$_getOtpCopyWithImpl(_$_getOtp _value, $Res Function(_$_getOtp) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$_getOtp(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_getOtp implements _getOtp {
  const _$_getOtp({required this.email});

  @override
  final String email;

  @override
  String toString() {
    return 'ForgotpasswordEvent.getOtp(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_getOtp &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_getOtpCopyWith<_$_getOtp> get copyWith =>
      __$$_getOtpCopyWithImpl<_$_getOtp>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) getOtp,
    required TResult Function(String otp) getVerifyRgister,
    required TResult Function(String password) getRgister,
  }) {
    return getOtp(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? getOtp,
    TResult? Function(String otp)? getVerifyRgister,
    TResult? Function(String password)? getRgister,
  }) {
    return getOtp?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? getOtp,
    TResult Function(String otp)? getVerifyRgister,
    TResult Function(String password)? getRgister,
    required TResult orElse(),
  }) {
    if (getOtp != null) {
      return getOtp(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getOtp value) getOtp,
    required TResult Function(_getVerifyRegister value) getVerifyRgister,
    required TResult Function(_getRegister value) getRgister,
  }) {
    return getOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getOtp value)? getOtp,
    TResult? Function(_getVerifyRegister value)? getVerifyRgister,
    TResult? Function(_getRegister value)? getRgister,
  }) {
    return getOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getOtp value)? getOtp,
    TResult Function(_getVerifyRegister value)? getVerifyRgister,
    TResult Function(_getRegister value)? getRgister,
    required TResult orElse(),
  }) {
    if (getOtp != null) {
      return getOtp(this);
    }
    return orElse();
  }
}

abstract class _getOtp implements ForgotpasswordEvent {
  const factory _getOtp({required final String email}) = _$_getOtp;

  String get email;
  @JsonKey(ignore: true)
  _$$_getOtpCopyWith<_$_getOtp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_getVerifyRegisterCopyWith<$Res> {
  factory _$$_getVerifyRegisterCopyWith(_$_getVerifyRegister value,
          $Res Function(_$_getVerifyRegister) then) =
      __$$_getVerifyRegisterCopyWithImpl<$Res>;
  @useResult
  $Res call({String otp});
}

/// @nodoc
class __$$_getVerifyRegisterCopyWithImpl<$Res>
    extends _$ForgotpasswordEventCopyWithImpl<$Res, _$_getVerifyRegister>
    implements _$$_getVerifyRegisterCopyWith<$Res> {
  __$$_getVerifyRegisterCopyWithImpl(
      _$_getVerifyRegister _value, $Res Function(_$_getVerifyRegister) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otp = null,
  }) {
    return _then(_$_getVerifyRegister(
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_getVerifyRegister implements _getVerifyRegister {
  const _$_getVerifyRegister({required this.otp});

  @override
  final String otp;

  @override
  String toString() {
    return 'ForgotpasswordEvent.getVerifyRgister(otp: $otp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_getVerifyRegister &&
            (identical(other.otp, otp) || other.otp == otp));
  }

  @override
  int get hashCode => Object.hash(runtimeType, otp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_getVerifyRegisterCopyWith<_$_getVerifyRegister> get copyWith =>
      __$$_getVerifyRegisterCopyWithImpl<_$_getVerifyRegister>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) getOtp,
    required TResult Function(String otp) getVerifyRgister,
    required TResult Function(String password) getRgister,
  }) {
    return getVerifyRgister(otp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? getOtp,
    TResult? Function(String otp)? getVerifyRgister,
    TResult? Function(String password)? getRgister,
  }) {
    return getVerifyRgister?.call(otp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? getOtp,
    TResult Function(String otp)? getVerifyRgister,
    TResult Function(String password)? getRgister,
    required TResult orElse(),
  }) {
    if (getVerifyRgister != null) {
      return getVerifyRgister(otp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getOtp value) getOtp,
    required TResult Function(_getVerifyRegister value) getVerifyRgister,
    required TResult Function(_getRegister value) getRgister,
  }) {
    return getVerifyRgister(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getOtp value)? getOtp,
    TResult? Function(_getVerifyRegister value)? getVerifyRgister,
    TResult? Function(_getRegister value)? getRgister,
  }) {
    return getVerifyRgister?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getOtp value)? getOtp,
    TResult Function(_getVerifyRegister value)? getVerifyRgister,
    TResult Function(_getRegister value)? getRgister,
    required TResult orElse(),
  }) {
    if (getVerifyRgister != null) {
      return getVerifyRgister(this);
    }
    return orElse();
  }
}

abstract class _getVerifyRegister implements ForgotpasswordEvent {
  const factory _getVerifyRegister({required final String otp}) =
      _$_getVerifyRegister;

  String get otp;
  @JsonKey(ignore: true)
  _$$_getVerifyRegisterCopyWith<_$_getVerifyRegister> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_getRegisterCopyWith<$Res> {
  factory _$$_getRegisterCopyWith(
          _$_getRegister value, $Res Function(_$_getRegister) then) =
      __$$_getRegisterCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$_getRegisterCopyWithImpl<$Res>
    extends _$ForgotpasswordEventCopyWithImpl<$Res, _$_getRegister>
    implements _$$_getRegisterCopyWith<$Res> {
  __$$_getRegisterCopyWithImpl(
      _$_getRegister _value, $Res Function(_$_getRegister) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$_getRegister(
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_getRegister implements _getRegister {
  const _$_getRegister({required this.password});

  @override
  final String password;

  @override
  String toString() {
    return 'ForgotpasswordEvent.getRgister(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_getRegister &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_getRegisterCopyWith<_$_getRegister> get copyWith =>
      __$$_getRegisterCopyWithImpl<_$_getRegister>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) getOtp,
    required TResult Function(String otp) getVerifyRgister,
    required TResult Function(String password) getRgister,
  }) {
    return getRgister(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? getOtp,
    TResult? Function(String otp)? getVerifyRgister,
    TResult? Function(String password)? getRgister,
  }) {
    return getRgister?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? getOtp,
    TResult Function(String otp)? getVerifyRgister,
    TResult Function(String password)? getRgister,
    required TResult orElse(),
  }) {
    if (getRgister != null) {
      return getRgister(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getOtp value) getOtp,
    required TResult Function(_getVerifyRegister value) getVerifyRgister,
    required TResult Function(_getRegister value) getRgister,
  }) {
    return getRgister(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getOtp value)? getOtp,
    TResult? Function(_getVerifyRegister value)? getVerifyRgister,
    TResult? Function(_getRegister value)? getRgister,
  }) {
    return getRgister?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getOtp value)? getOtp,
    TResult Function(_getVerifyRegister value)? getVerifyRgister,
    TResult Function(_getRegister value)? getRgister,
    required TResult orElse(),
  }) {
    if (getRgister != null) {
      return getRgister(this);
    }
    return orElse();
  }
}

abstract class _getRegister implements ForgotpasswordEvent {
  const factory _getRegister({required final String password}) = _$_getRegister;

  String get password;
  @JsonKey(ignore: true)
  _$$_getRegisterCopyWith<_$_getRegister> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ForgotpasswordState {
  ApiResponse<bool> get forgot => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ForgotpasswordStateCopyWith<ForgotpasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotpasswordStateCopyWith<$Res> {
  factory $ForgotpasswordStateCopyWith(
          ForgotpasswordState value, $Res Function(ForgotpasswordState) then) =
      _$ForgotpasswordStateCopyWithImpl<$Res, ForgotpasswordState>;
  @useResult
  $Res call({ApiResponse<bool> forgot});
}

/// @nodoc
class _$ForgotpasswordStateCopyWithImpl<$Res, $Val extends ForgotpasswordState>
    implements $ForgotpasswordStateCopyWith<$Res> {
  _$ForgotpasswordStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? forgot = null,
  }) {
    return _then(_value.copyWith(
      forgot: null == forgot
          ? _value.forgot
          : forgot // ignore: cast_nullable_to_non_nullable
              as ApiResponse<bool>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ForgotpasswordStateCopyWith<$Res>
    implements $ForgotpasswordStateCopyWith<$Res> {
  factory _$$_ForgotpasswordStateCopyWith(_$_ForgotpasswordState value,
          $Res Function(_$_ForgotpasswordState) then) =
      __$$_ForgotpasswordStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ApiResponse<bool> forgot});
}

/// @nodoc
class __$$_ForgotpasswordStateCopyWithImpl<$Res>
    extends _$ForgotpasswordStateCopyWithImpl<$Res, _$_ForgotpasswordState>
    implements _$$_ForgotpasswordStateCopyWith<$Res> {
  __$$_ForgotpasswordStateCopyWithImpl(_$_ForgotpasswordState _value,
      $Res Function(_$_ForgotpasswordState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? forgot = null,
  }) {
    return _then(_$_ForgotpasswordState(
      forgot: null == forgot
          ? _value.forgot
          : forgot // ignore: cast_nullable_to_non_nullable
              as ApiResponse<bool>,
    ));
  }
}

/// @nodoc

class _$_ForgotpasswordState implements _ForgotpasswordState {
  const _$_ForgotpasswordState({required this.forgot});

  @override
  final ApiResponse<bool> forgot;

  @override
  String toString() {
    return 'ForgotpasswordState(forgot: $forgot)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ForgotpasswordState &&
            (identical(other.forgot, forgot) || other.forgot == forgot));
  }

  @override
  int get hashCode => Object.hash(runtimeType, forgot);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ForgotpasswordStateCopyWith<_$_ForgotpasswordState> get copyWith =>
      __$$_ForgotpasswordStateCopyWithImpl<_$_ForgotpasswordState>(
          this, _$identity);
}

abstract class _ForgotpasswordState implements ForgotpasswordState {
  const factory _ForgotpasswordState(
      {required final ApiResponse<bool> forgot}) = _$_ForgotpasswordState;

  @override
  ApiResponse<bool> get forgot;
  @override
  @JsonKey(ignore: true)
  _$$_ForgotpasswordStateCopyWith<_$_ForgotpasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}
