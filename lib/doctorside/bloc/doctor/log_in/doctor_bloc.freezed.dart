// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'doctor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DoctorEvent {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) getDoctorLogIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? getDoctorLogIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? getDoctorLogIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getDoctorLogIn value) getDoctorLogIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getDoctorLogIn value)? getDoctorLogIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getDoctorLogIn value)? getDoctorLogIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DoctorEventCopyWith<DoctorEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoctorEventCopyWith<$Res> {
  factory $DoctorEventCopyWith(
          DoctorEvent value, $Res Function(DoctorEvent) then) =
      _$DoctorEventCopyWithImpl<$Res, DoctorEvent>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class _$DoctorEventCopyWithImpl<$Res, $Val extends DoctorEvent>
    implements $DoctorEventCopyWith<$Res> {
  _$DoctorEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_getDoctorLogInCopyWith<$Res>
    implements $DoctorEventCopyWith<$Res> {
  factory _$$_getDoctorLogInCopyWith(
          _$_getDoctorLogIn value, $Res Function(_$_getDoctorLogIn) then) =
      __$$_getDoctorLogInCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$_getDoctorLogInCopyWithImpl<$Res>
    extends _$DoctorEventCopyWithImpl<$Res, _$_getDoctorLogIn>
    implements _$$_getDoctorLogInCopyWith<$Res> {
  __$$_getDoctorLogInCopyWithImpl(
      _$_getDoctorLogIn _value, $Res Function(_$_getDoctorLogIn) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$_getDoctorLogIn(
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

class _$_getDoctorLogIn implements _getDoctorLogIn {
  const _$_getDoctorLogIn({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'DoctorEvent.getDoctorLogIn(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_getDoctorLogIn &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_getDoctorLogInCopyWith<_$_getDoctorLogIn> get copyWith =>
      __$$_getDoctorLogInCopyWithImpl<_$_getDoctorLogIn>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) getDoctorLogIn,
  }) {
    return getDoctorLogIn(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? getDoctorLogIn,
  }) {
    return getDoctorLogIn?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? getDoctorLogIn,
    required TResult orElse(),
  }) {
    if (getDoctorLogIn != null) {
      return getDoctorLogIn(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getDoctorLogIn value) getDoctorLogIn,
  }) {
    return getDoctorLogIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getDoctorLogIn value)? getDoctorLogIn,
  }) {
    return getDoctorLogIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getDoctorLogIn value)? getDoctorLogIn,
    required TResult orElse(),
  }) {
    if (getDoctorLogIn != null) {
      return getDoctorLogIn(this);
    }
    return orElse();
  }
}

abstract class _getDoctorLogIn implements DoctorEvent {
  const factory _getDoctorLogIn(
      {required final String email,
      required final String password}) = _$_getDoctorLogIn;

  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$_getDoctorLogInCopyWith<_$_getDoctorLogIn> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DoctorState {
  bool get isloading => throw _privateConstructorUsedError;
  bool? get logResponse => throw _privateConstructorUsedError;
  Option<Either<MainFailure, bool>> get failureOrSuccess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DoctorStateCopyWith<DoctorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoctorStateCopyWith<$Res> {
  factory $DoctorStateCopyWith(
          DoctorState value, $Res Function(DoctorState) then) =
      _$DoctorStateCopyWithImpl<$Res, DoctorState>;
  @useResult
  $Res call(
      {bool isloading,
      bool? logResponse,
      Option<Either<MainFailure, bool>> failureOrSuccess});
}

/// @nodoc
class _$DoctorStateCopyWithImpl<$Res, $Val extends DoctorState>
    implements $DoctorStateCopyWith<$Res> {
  _$DoctorStateCopyWithImpl(this._value, this._then);

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
              as bool?,
      failureOrSuccess: null == failureOrSuccess
          ? _value.failureOrSuccess
          : failureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, bool>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DoctorStateCopyWith<$Res>
    implements $DoctorStateCopyWith<$Res> {
  factory _$$_DoctorStateCopyWith(
          _$_DoctorState value, $Res Function(_$_DoctorState) then) =
      __$$_DoctorStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isloading,
      bool? logResponse,
      Option<Either<MainFailure, bool>> failureOrSuccess});
}

/// @nodoc
class __$$_DoctorStateCopyWithImpl<$Res>
    extends _$DoctorStateCopyWithImpl<$Res, _$_DoctorState>
    implements _$$_DoctorStateCopyWith<$Res> {
  __$$_DoctorStateCopyWithImpl(
      _$_DoctorState _value, $Res Function(_$_DoctorState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isloading = null,
    Object? logResponse = freezed,
    Object? failureOrSuccess = null,
  }) {
    return _then(_$_DoctorState(
      isloading: null == isloading
          ? _value.isloading
          : isloading // ignore: cast_nullable_to_non_nullable
              as bool,
      logResponse: freezed == logResponse
          ? _value.logResponse
          : logResponse // ignore: cast_nullable_to_non_nullable
              as bool?,
      failureOrSuccess: null == failureOrSuccess
          ? _value.failureOrSuccess
          : failureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, bool>>,
    ));
  }
}

/// @nodoc

class _$_DoctorState implements _DoctorState {
  const _$_DoctorState(
      {required this.isloading,
      this.logResponse,
      required this.failureOrSuccess});

  @override
  final bool isloading;
  @override
  final bool? logResponse;
  @override
  final Option<Either<MainFailure, bool>> failureOrSuccess;

  @override
  String toString() {
    return 'DoctorState(isloading: $isloading, logResponse: $logResponse, failureOrSuccess: $failureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DoctorState &&
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
  _$$_DoctorStateCopyWith<_$_DoctorState> get copyWith =>
      __$$_DoctorStateCopyWithImpl<_$_DoctorState>(this, _$identity);
}

abstract class _DoctorState implements DoctorState {
  const factory _DoctorState(
          {required final bool isloading,
          final bool? logResponse,
          required final Option<Either<MainFailure, bool>> failureOrSuccess}) =
      _$_DoctorState;

  @override
  bool get isloading;
  @override
  bool? get logResponse;
  @override
  Option<Either<MainFailure, bool>> get failureOrSuccess;
  @override
  @JsonKey(ignore: true)
  _$$_DoctorStateCopyWith<_$_DoctorState> get copyWith =>
      throw _privateConstructorUsedError;
}
