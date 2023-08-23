// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signup_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignupEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getSignUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getSignUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getSignUp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getSignUph value) getSignUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getSignUph value)? getSignUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getSignUph value)? getSignUp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupEventCopyWith<$Res> {
  factory $SignupEventCopyWith(
          SignupEvent value, $Res Function(SignupEvent) then) =
      _$SignupEventCopyWithImpl<$Res, SignupEvent>;
}

/// @nodoc
class _$SignupEventCopyWithImpl<$Res, $Val extends SignupEvent>
    implements $SignupEventCopyWith<$Res> {
  _$SignupEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_getSignUphCopyWith<$Res> {
  factory _$$_getSignUphCopyWith(
          _$_getSignUph value, $Res Function(_$_getSignUph) then) =
      __$$_getSignUphCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_getSignUphCopyWithImpl<$Res>
    extends _$SignupEventCopyWithImpl<$Res, _$_getSignUph>
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
    return 'SignupEvent.getSignUp()';
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
    required TResult Function() getSignUp,
  }) {
    return getSignUp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getSignUp,
  }) {
    return getSignUp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
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
    required TResult Function(_getSignUph value) getSignUp,
  }) {
    return getSignUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getSignUph value)? getSignUp,
  }) {
    return getSignUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getSignUph value)? getSignUp,
    required TResult orElse(),
  }) {
    if (getSignUp != null) {
      return getSignUp(this);
    }
    return orElse();
  }
}

abstract class _getSignUph implements SignupEvent {
  const factory _getSignUph() = _$_getSignUph;
}

/// @nodoc
mixin _$SignupState {
  ApiResponse<SignupInfo>? get signUpResponse =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignupStateCopyWith<SignupState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupStateCopyWith<$Res> {
  factory $SignupStateCopyWith(
          SignupState value, $Res Function(SignupState) then) =
      _$SignupStateCopyWithImpl<$Res, SignupState>;
  @useResult
  $Res call({ApiResponse<SignupInfo>? signUpResponse});
}

/// @nodoc
class _$SignupStateCopyWithImpl<$Res, $Val extends SignupState>
    implements $SignupStateCopyWith<$Res> {
  _$SignupStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signUpResponse = freezed,
  }) {
    return _then(_value.copyWith(
      signUpResponse: freezed == signUpResponse
          ? _value.signUpResponse
          : signUpResponse // ignore: cast_nullable_to_non_nullable
              as ApiResponse<SignupInfo>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SignupStateCopyWith<$Res>
    implements $SignupStateCopyWith<$Res> {
  factory _$$_SignupStateCopyWith(
          _$_SignupState value, $Res Function(_$_SignupState) then) =
      __$$_SignupStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ApiResponse<SignupInfo>? signUpResponse});
}

/// @nodoc
class __$$_SignupStateCopyWithImpl<$Res>
    extends _$SignupStateCopyWithImpl<$Res, _$_SignupState>
    implements _$$_SignupStateCopyWith<$Res> {
  __$$_SignupStateCopyWithImpl(
      _$_SignupState _value, $Res Function(_$_SignupState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signUpResponse = freezed,
  }) {
    return _then(_$_SignupState(
      signUpResponse: freezed == signUpResponse
          ? _value.signUpResponse
          : signUpResponse // ignore: cast_nullable_to_non_nullable
              as ApiResponse<SignupInfo>?,
    ));
  }
}

/// @nodoc

class _$_SignupState implements _SignupState {
  const _$_SignupState({this.signUpResponse});

  @override
  final ApiResponse<SignupInfo>? signUpResponse;

  @override
  String toString() {
    return 'SignupState(signUpResponse: $signUpResponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignupState &&
            (identical(other.signUpResponse, signUpResponse) ||
                other.signUpResponse == signUpResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, signUpResponse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignupStateCopyWith<_$_SignupState> get copyWith =>
      __$$_SignupStateCopyWithImpl<_$_SignupState>(this, _$identity);
}

abstract class _SignupState implements SignupState {
  const factory _SignupState({final ApiResponse<SignupInfo>? signUpResponse}) =
      _$_SignupState;

  @override
  ApiResponse<SignupInfo>? get signUpResponse;
  @override
  @JsonKey(ignore: true)
  _$$_SignupStateCopyWith<_$_SignupState> get copyWith =>
      throw _privateConstructorUsedError;
}
