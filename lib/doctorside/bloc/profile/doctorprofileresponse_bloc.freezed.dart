// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'doctorprofileresponse_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DoctorprofileresponseEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getDoctorProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getDoctorProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getDoctorProfile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDoctorProfile value) getDoctorProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDoctorProfile value)? getDoctorProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDoctorProfile value)? getDoctorProfile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoctorprofileresponseEventCopyWith<$Res> {
  factory $DoctorprofileresponseEventCopyWith(DoctorprofileresponseEvent value,
          $Res Function(DoctorprofileresponseEvent) then) =
      _$DoctorprofileresponseEventCopyWithImpl<$Res,
          DoctorprofileresponseEvent>;
}

/// @nodoc
class _$DoctorprofileresponseEventCopyWithImpl<$Res,
        $Val extends DoctorprofileresponseEvent>
    implements $DoctorprofileresponseEventCopyWith<$Res> {
  _$DoctorprofileresponseEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetDoctorProfileCopyWith<$Res> {
  factory _$$_GetDoctorProfileCopyWith(
          _$_GetDoctorProfile value, $Res Function(_$_GetDoctorProfile) then) =
      __$$_GetDoctorProfileCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetDoctorProfileCopyWithImpl<$Res>
    extends _$DoctorprofileresponseEventCopyWithImpl<$Res, _$_GetDoctorProfile>
    implements _$$_GetDoctorProfileCopyWith<$Res> {
  __$$_GetDoctorProfileCopyWithImpl(
      _$_GetDoctorProfile _value, $Res Function(_$_GetDoctorProfile) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetDoctorProfile implements _GetDoctorProfile {
  const _$_GetDoctorProfile();

  @override
  String toString() {
    return 'DoctorprofileresponseEvent.getDoctorProfile()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetDoctorProfile);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getDoctorProfile,
  }) {
    return getDoctorProfile();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getDoctorProfile,
  }) {
    return getDoctorProfile?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getDoctorProfile,
    required TResult orElse(),
  }) {
    if (getDoctorProfile != null) {
      return getDoctorProfile();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDoctorProfile value) getDoctorProfile,
  }) {
    return getDoctorProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDoctorProfile value)? getDoctorProfile,
  }) {
    return getDoctorProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDoctorProfile value)? getDoctorProfile,
    required TResult orElse(),
  }) {
    if (getDoctorProfile != null) {
      return getDoctorProfile(this);
    }
    return orElse();
  }
}

abstract class _GetDoctorProfile implements DoctorprofileresponseEvent {
  const factory _GetDoctorProfile() = _$_GetDoctorProfile;
}

/// @nodoc
mixin _$DoctorprofileresponseState {
  ApiResponse<DoctorProfileModel> get profile =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DoctorprofileresponseStateCopyWith<DoctorprofileresponseState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoctorprofileresponseStateCopyWith<$Res> {
  factory $DoctorprofileresponseStateCopyWith(DoctorprofileresponseState value,
          $Res Function(DoctorprofileresponseState) then) =
      _$DoctorprofileresponseStateCopyWithImpl<$Res,
          DoctorprofileresponseState>;
  @useResult
  $Res call({ApiResponse<DoctorProfileModel> profile});
}

/// @nodoc
class _$DoctorprofileresponseStateCopyWithImpl<$Res,
        $Val extends DoctorprofileresponseState>
    implements $DoctorprofileresponseStateCopyWith<$Res> {
  _$DoctorprofileresponseStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profile = null,
  }) {
    return _then(_value.copyWith(
      profile: null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ApiResponse<DoctorProfileModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DoctorprofileresponseStateCopyWith<$Res>
    implements $DoctorprofileresponseStateCopyWith<$Res> {
  factory _$$_DoctorprofileresponseStateCopyWith(
          _$_DoctorprofileresponseState value,
          $Res Function(_$_DoctorprofileresponseState) then) =
      __$$_DoctorprofileresponseStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ApiResponse<DoctorProfileModel> profile});
}

/// @nodoc
class __$$_DoctorprofileresponseStateCopyWithImpl<$Res>
    extends _$DoctorprofileresponseStateCopyWithImpl<$Res,
        _$_DoctorprofileresponseState>
    implements _$$_DoctorprofileresponseStateCopyWith<$Res> {
  __$$_DoctorprofileresponseStateCopyWithImpl(
      _$_DoctorprofileresponseState _value,
      $Res Function(_$_DoctorprofileresponseState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profile = null,
  }) {
    return _then(_$_DoctorprofileresponseState(
      profile: null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ApiResponse<DoctorProfileModel>,
    ));
  }
}

/// @nodoc

class _$_DoctorprofileresponseState implements _DoctorprofileresponseState {
  const _$_DoctorprofileresponseState({required this.profile});

  @override
  final ApiResponse<DoctorProfileModel> profile;

  @override
  String toString() {
    return 'DoctorprofileresponseState(profile: $profile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DoctorprofileresponseState &&
            (identical(other.profile, profile) || other.profile == profile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, profile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DoctorprofileresponseStateCopyWith<_$_DoctorprofileresponseState>
      get copyWith => __$$_DoctorprofileresponseStateCopyWithImpl<
          _$_DoctorprofileresponseState>(this, _$identity);
}

abstract class _DoctorprofileresponseState
    implements DoctorprofileresponseState {
  const factory _DoctorprofileresponseState(
          {required final ApiResponse<DoctorProfileModel> profile}) =
      _$_DoctorprofileresponseState;

  @override
  ApiResponse<DoctorProfileModel> get profile;
  @override
  @JsonKey(ignore: true)
  _$$_DoctorprofileresponseStateCopyWith<_$_DoctorprofileresponseState>
      get copyWith => throw _privateConstructorUsedError;
}
