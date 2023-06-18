// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) authLogIn,
    required TResult Function() getSignUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? authLogIn,
    TResult? Function()? getSignUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? authLogIn,
    TResult Function()? getSignUp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthLogIn value) authLogIn,
    required TResult Function(_getSignUph value) getSignUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthLogIn value)? authLogIn,
    TResult? Function(_getSignUph value)? getSignUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthLogIn value)? authLogIn,
    TResult Function(_getSignUph value)? getSignUp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res, LoginEvent>;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res, $Val extends LoginEvent>
    implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_AuthLogInCopyWith<$Res> {
  factory _$$_AuthLogInCopyWith(
          _$_AuthLogIn value, $Res Function(_$_AuthLogIn) then) =
      __$$_AuthLogInCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$_AuthLogInCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$_AuthLogIn>
    implements _$$_AuthLogInCopyWith<$Res> {
  __$$_AuthLogInCopyWithImpl(
      _$_AuthLogIn _value, $Res Function(_$_AuthLogIn) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$_AuthLogIn(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AuthLogIn implements _AuthLogIn {
  const _$_AuthLogIn({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'LoginEvent.authLogIn(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthLogIn &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthLogInCopyWith<_$_AuthLogIn> get copyWith =>
      __$$_AuthLogInCopyWithImpl<_$_AuthLogIn>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) authLogIn,
    required TResult Function() getSignUp,
  }) {
    return authLogIn(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? authLogIn,
    TResult? Function()? getSignUp,
  }) {
    return authLogIn?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? authLogIn,
    TResult Function()? getSignUp,
    required TResult orElse(),
  }) {
    if (authLogIn != null) {
      return authLogIn(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthLogIn value) authLogIn,
    required TResult Function(_getSignUph value) getSignUp,
  }) {
    return authLogIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthLogIn value)? authLogIn,
    TResult? Function(_getSignUph value)? getSignUp,
  }) {
    return authLogIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthLogIn value)? authLogIn,
    TResult Function(_getSignUph value)? getSignUp,
    required TResult orElse(),
  }) {
    if (authLogIn != null) {
      return authLogIn(this);
    }
    return orElse();
  }
}

abstract class _AuthLogIn implements LoginEvent {
  const factory _AuthLogIn(
      {required final String email,
      required final String password}) = _$_AuthLogIn;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$_AuthLogInCopyWith<_$_AuthLogIn> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_getSignUphCopyWith<$Res> {
  factory _$$_getSignUphCopyWith(
          _$_getSignUph value, $Res Function(_$_getSignUph) then) =
      __$$_getSignUphCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_getSignUphCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$_getSignUph>
    implements _$$_getSignUphCopyWith<$Res> {
  __$$_getSignUphCopyWithImpl(
      _$_getSignUph _value, $Res Function(_$_getSignUph) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_getSignUph implements _getSignUph {
  const _$_getSignUph();

  @override
  String toString() {
    return 'LoginEvent.getSignUp()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_getSignUph);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) authLogIn,
    required TResult Function() getSignUp,
  }) {
    return getSignUp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? authLogIn,
    TResult? Function()? getSignUp,
  }) {
    return getSignUp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? authLogIn,
    TResult Function()? getSignUp,
    required TResult orElse(),
  }) {
    if (getSignUp != null) {
      return getSignUp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthLogIn value) authLogIn,
    required TResult Function(_getSignUph value) getSignUp,
  }) {
    return getSignUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthLogIn value)? authLogIn,
    TResult? Function(_getSignUph value)? getSignUp,
  }) {
    return getSignUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthLogIn value)? authLogIn,
    TResult Function(_getSignUph value)? getSignUp,
    required TResult orElse(),
  }) {
    if (getSignUp != null) {
      return getSignUp(this);
    }
    return orElse();
  }
}

abstract class _getSignUph implements LoginEvent {
  const factory _getSignUph() = _$_getSignUph;
}

/// @nodoc
mixin _$LoginState {
  bool get isloading => throw _privateConstructorUsedError;
  LogInfo? get logResponse => throw _privateConstructorUsedError;
  Option<Either<MainFailure, LogInfo>> get failureOrSuccess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
  @useResult
  $Res call(
      {bool isloading,
      LogInfo? logResponse,
      Option<Either<MainFailure, LogInfo>> failureOrSuccess});
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isloading = null,
    Object? logResponse = freezed,
    Object? failureOrSuccess = null,
  }) {
    return _then(_value.copyWith(
      isloading: null == isloading
          ? _value.isloading
          : isloading // ignore: cast_nullable_to_non_nullable
              as bool,
      logResponse: freezed == logResponse
          ? _value.logResponse
          : logResponse // ignore: cast_nullable_to_non_nullable
              as LogInfo?,
      failureOrSuccess: null == failureOrSuccess
          ? _value.failureOrSuccess
          : failureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, LogInfo>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LoginStateCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory _$$_LoginStateCopyWith(
          _$_LoginState value, $Res Function(_$_LoginState) then) =
      __$$_LoginStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isloading,
      LogInfo? logResponse,
      Option<Either<MainFailure, LogInfo>> failureOrSuccess});
}

/// @nodoc
class __$$_LoginStateCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$_LoginState>
    implements _$$_LoginStateCopyWith<$Res> {
  __$$_LoginStateCopyWithImpl(
      _$_LoginState _value, $Res Function(_$_LoginState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isloading = null,
    Object? logResponse = freezed,
    Object? failureOrSuccess = null,
  }) {
    return _then(_$_LoginState(
      isloading: null == isloading
          ? _value.isloading
          : isloading // ignore: cast_nullable_to_non_nullable
              as bool,
      logResponse: freezed == logResponse
          ? _value.logResponse
          : logResponse // ignore: cast_nullable_to_non_nullable
              as LogInfo?,
      failureOrSuccess: null == failureOrSuccess
          ? _value.failureOrSuccess
          : failureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, LogInfo>>,
    ));
  }
}

/// @nodoc

class _$_LoginState implements _LoginState {
  const _$_LoginState(
      {required this.isloading,
      this.logResponse,
      required this.failureOrSuccess});

  @override
  final bool isloading;
  @override
  final LogInfo? logResponse;
  @override
  final Option<Either<MainFailure, LogInfo>> failureOrSuccess;

  @override
  String toString() {
    return 'LoginState(isloading: $isloading, logResponse: $logResponse, failureOrSuccess: $failureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginState &&
            (identical(other.isloading, isloading) ||
                other.isloading == isloading) &&
            (identical(other.logResponse, logResponse) ||
                other.logResponse == logResponse) &&
            (identical(other.failureOrSuccess, failureOrSuccess) ||
                other.failureOrSuccess == failureOrSuccess));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isloading, logResponse, failureOrSuccess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginStateCopyWith<_$_LoginState> get copyWith =>
      __$$_LoginStateCopyWithImpl<_$_LoginState>(this, _$identity);
}

abstract class _LoginState implements LoginState {
  const factory _LoginState(
      {required final bool isloading,
      final LogInfo? logResponse,
      required final Option<Either<MainFailure, LogInfo>>
          failureOrSuccess}) = _$_LoginState;

  @override
  bool get isloading;
  @override
  LogInfo? get logResponse;
  @override
  Option<Either<MainFailure, LogInfo>> get failureOrSuccess;
  @override
  @JsonKey(ignore: true)
  _$$_LoginStateCopyWith<_$_LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}
