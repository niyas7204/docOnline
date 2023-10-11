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
abstract class _$$getOtpImplCopyWith<$Res> {
  factory _$$getOtpImplCopyWith(
          _$getOtpImpl value, $Res Function(_$getOtpImpl) then) =
      __$$getOtpImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$getOtpImplCopyWithImpl<$Res>
    extends _$ForgotpasswordEventCopyWithImpl<$Res, _$getOtpImpl>
    implements _$$getOtpImplCopyWith<$Res> {
  __$$getOtpImplCopyWithImpl(
      _$getOtpImpl _value, $Res Function(_$getOtpImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$getOtpImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$getOtpImpl implements _getOtp {
  const _$getOtpImpl({required this.email});

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
            other is _$getOtpImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$getOtpImplCopyWith<_$getOtpImpl> get copyWith =>
      __$$getOtpImplCopyWithImpl<_$getOtpImpl>(this, _$identity);

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
  const factory _getOtp({required final String email}) = _$getOtpImpl;

  String get email;
  @JsonKey(ignore: true)
  _$$getOtpImplCopyWith<_$getOtpImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$getVerifyRegisterImplCopyWith<$Res> {
  factory _$$getVerifyRegisterImplCopyWith(_$getVerifyRegisterImpl value,
          $Res Function(_$getVerifyRegisterImpl) then) =
      __$$getVerifyRegisterImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String otp});
}

/// @nodoc
class __$$getVerifyRegisterImplCopyWithImpl<$Res>
    extends _$ForgotpasswordEventCopyWithImpl<$Res, _$getVerifyRegisterImpl>
    implements _$$getVerifyRegisterImplCopyWith<$Res> {
  __$$getVerifyRegisterImplCopyWithImpl(_$getVerifyRegisterImpl _value,
      $Res Function(_$getVerifyRegisterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otp = null,
  }) {
    return _then(_$getVerifyRegisterImpl(
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$getVerifyRegisterImpl implements _getVerifyRegister {
  const _$getVerifyRegisterImpl({required this.otp});

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
            other is _$getVerifyRegisterImpl &&
            (identical(other.otp, otp) || other.otp == otp));
  }

  @override
  int get hashCode => Object.hash(runtimeType, otp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$getVerifyRegisterImplCopyWith<_$getVerifyRegisterImpl> get copyWith =>
      __$$getVerifyRegisterImplCopyWithImpl<_$getVerifyRegisterImpl>(
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
      _$getVerifyRegisterImpl;

  String get otp;
  @JsonKey(ignore: true)
  _$$getVerifyRegisterImplCopyWith<_$getVerifyRegisterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$getRegisterImplCopyWith<$Res> {
  factory _$$getRegisterImplCopyWith(
          _$getRegisterImpl value, $Res Function(_$getRegisterImpl) then) =
      __$$getRegisterImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$getRegisterImplCopyWithImpl<$Res>
    extends _$ForgotpasswordEventCopyWithImpl<$Res, _$getRegisterImpl>
    implements _$$getRegisterImplCopyWith<$Res> {
  __$$getRegisterImplCopyWithImpl(
      _$getRegisterImpl _value, $Res Function(_$getRegisterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$getRegisterImpl(
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$getRegisterImpl implements _getRegister {
  const _$getRegisterImpl({required this.password});

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
            other is _$getRegisterImpl &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$getRegisterImplCopyWith<_$getRegisterImpl> get copyWith =>
      __$$getRegisterImplCopyWithImpl<_$getRegisterImpl>(this, _$identity);

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
  const factory _getRegister({required final String password}) =
      _$getRegisterImpl;

  String get password;
  @JsonKey(ignore: true)
  _$$getRegisterImplCopyWith<_$getRegisterImpl> get copyWith =>
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
abstract class _$$ForgotpasswordStateImplCopyWith<$Res>
    implements $ForgotpasswordStateCopyWith<$Res> {
  factory _$$ForgotpasswordStateImplCopyWith(_$ForgotpasswordStateImpl value,
          $Res Function(_$ForgotpasswordStateImpl) then) =
      __$$ForgotpasswordStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ApiResponse<bool> forgot});
}

/// @nodoc
class __$$ForgotpasswordStateImplCopyWithImpl<$Res>
    extends _$ForgotpasswordStateCopyWithImpl<$Res, _$ForgotpasswordStateImpl>
    implements _$$ForgotpasswordStateImplCopyWith<$Res> {
  __$$ForgotpasswordStateImplCopyWithImpl(_$ForgotpasswordStateImpl _value,
      $Res Function(_$ForgotpasswordStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? forgot = null,
  }) {
    return _then(_$ForgotpasswordStateImpl(
      forgot: null == forgot
          ? _value.forgot
          : forgot // ignore: cast_nullable_to_non_nullable
              as ApiResponse<bool>,
    ));
  }
}

/// @nodoc

class _$ForgotpasswordStateImpl implements _ForgotpasswordState {
  const _$ForgotpasswordStateImpl({required this.forgot});

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
            other is _$ForgotpasswordStateImpl &&
            (identical(other.forgot, forgot) || other.forgot == forgot));
  }

  @override
  int get hashCode => Object.hash(runtimeType, forgot);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForgotpasswordStateImplCopyWith<_$ForgotpasswordStateImpl> get copyWith =>
      __$$ForgotpasswordStateImplCopyWithImpl<_$ForgotpasswordStateImpl>(
          this, _$identity);
}

abstract class _ForgotpasswordState implements ForgotpasswordState {
  const factory _ForgotpasswordState(
      {required final ApiResponse<bool> forgot}) = _$ForgotpasswordStateImpl;

  @override
  ApiResponse<bool> get forgot;
  @override
  @JsonKey(ignore: true)
  _$$ForgotpasswordStateImplCopyWith<_$ForgotpasswordStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
