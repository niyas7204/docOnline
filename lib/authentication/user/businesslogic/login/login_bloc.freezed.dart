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
abstract class _$$AuthLogInImplCopyWith<$Res> {
  factory _$$AuthLogInImplCopyWith(
          _$AuthLogInImpl value, $Res Function(_$AuthLogInImpl) then) =
      __$$AuthLogInImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$AuthLogInImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$AuthLogInImpl>
    implements _$$AuthLogInImplCopyWith<$Res> {
  __$$AuthLogInImplCopyWithImpl(
      _$AuthLogInImpl _value, $Res Function(_$AuthLogInImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$AuthLogInImpl(
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

class _$AuthLogInImpl implements _AuthLogIn {
  const _$AuthLogInImpl({required this.email, required this.password});

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
            other is _$AuthLogInImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthLogInImplCopyWith<_$AuthLogInImpl> get copyWith =>
      __$$AuthLogInImplCopyWithImpl<_$AuthLogInImpl>(this, _$identity);

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
      required final String password}) = _$AuthLogInImpl;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$AuthLogInImplCopyWith<_$AuthLogInImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$getSignUphImplCopyWith<$Res> {
  factory _$$getSignUphImplCopyWith(
          _$getSignUphImpl value, $Res Function(_$getSignUphImpl) then) =
      __$$getSignUphImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$getSignUphImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$getSignUphImpl>
    implements _$$getSignUphImplCopyWith<$Res> {
  __$$getSignUphImplCopyWithImpl(
      _$getSignUphImpl _value, $Res Function(_$getSignUphImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$getSignUphImpl implements _getSignUph {
  const _$getSignUphImpl();

  @override
  String toString() {
    return 'LoginEvent.getSignUp()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$getSignUphImpl);
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
  const factory _getSignUph() = _$getSignUphImpl;
}

/// @nodoc
mixin _$LoginState {
  ApiResponse<LogInfo> get loginData => throw _privateConstructorUsedError;

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
  $Res call({ApiResponse<LogInfo> loginData});
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
    Object? loginData = null,
  }) {
    return _then(_value.copyWith(
      loginData: null == loginData
          ? _value.loginData
          : loginData // ignore: cast_nullable_to_non_nullable
              as ApiResponse<LogInfo>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginStateImplCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory _$$LoginStateImplCopyWith(
          _$LoginStateImpl value, $Res Function(_$LoginStateImpl) then) =
      __$$LoginStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ApiResponse<LogInfo> loginData});
}

/// @nodoc
class __$$LoginStateImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginStateImpl>
    implements _$$LoginStateImplCopyWith<$Res> {
  __$$LoginStateImplCopyWithImpl(
      _$LoginStateImpl _value, $Res Function(_$LoginStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loginData = null,
  }) {
    return _then(_$LoginStateImpl(
      loginData: null == loginData
          ? _value.loginData
          : loginData // ignore: cast_nullable_to_non_nullable
              as ApiResponse<LogInfo>,
    ));
  }
}

/// @nodoc

class _$LoginStateImpl implements _LoginState {
  const _$LoginStateImpl({required this.loginData});

  @override
  final ApiResponse<LogInfo> loginData;

  @override
  String toString() {
    return 'LoginState(loginData: $loginData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginStateImpl &&
            (identical(other.loginData, loginData) ||
                other.loginData == loginData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loginData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginStateImplCopyWith<_$LoginStateImpl> get copyWith =>
      __$$LoginStateImplCopyWithImpl<_$LoginStateImpl>(this, _$identity);
}

abstract class _LoginState implements LoginState {
  const factory _LoginState({required final ApiResponse<LogInfo> loginData}) =
      _$LoginStateImpl;

  @override
  ApiResponse<LogInfo> get loginData;
  @override
  @JsonKey(ignore: true)
  _$$LoginStateImplCopyWith<_$LoginStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
