// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'doctor_profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DoctorProfileEvent {
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
    required TResult Function(_getDoctorProfile value) getDoctorProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getDoctorProfile value)? getDoctorProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getDoctorProfile value)? getDoctorProfile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoctorProfileEventCopyWith<$Res> {
  factory $DoctorProfileEventCopyWith(
          DoctorProfileEvent value, $Res Function(DoctorProfileEvent) then) =
      _$DoctorProfileEventCopyWithImpl<$Res, DoctorProfileEvent>;
}

/// @nodoc
class _$DoctorProfileEventCopyWithImpl<$Res, $Val extends DoctorProfileEvent>
    implements $DoctorProfileEventCopyWith<$Res> {
  _$DoctorProfileEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_getDoctorProfileCopyWith<$Res> {
  factory _$$_getDoctorProfileCopyWith(
          _$_getDoctorProfile value, $Res Function(_$_getDoctorProfile) then) =
      __$$_getDoctorProfileCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_getDoctorProfileCopyWithImpl<$Res>
    extends _$DoctorProfileEventCopyWithImpl<$Res, _$_getDoctorProfile>
    implements _$$_getDoctorProfileCopyWith<$Res> {
  __$$_getDoctorProfileCopyWithImpl(
      _$_getDoctorProfile _value, $Res Function(_$_getDoctorProfile) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_getDoctorProfile implements _getDoctorProfile {
  const _$_getDoctorProfile();

  @override
  String toString() {
    return 'DoctorProfileEvent.getDoctorProfile()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_getDoctorProfile);
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
    required TResult Function(_getDoctorProfile value) getDoctorProfile,
  }) {
    return getDoctorProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getDoctorProfile value)? getDoctorProfile,
  }) {
    return getDoctorProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getDoctorProfile value)? getDoctorProfile,
    required TResult orElse(),
  }) {
    if (getDoctorProfile != null) {
      return getDoctorProfile(this);
    }
    return orElse();
  }
}

abstract class _getDoctorProfile implements DoctorProfileEvent {
  const factory _getDoctorProfile() = _$_getDoctorProfile;
}

/// @nodoc
mixin _$DoctorProfileState {
  ApiResponse<DoctorProfileModel> get profile =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DoctorProfileStateCopyWith<DoctorProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoctorProfileStateCopyWith<$Res> {
  factory $DoctorProfileStateCopyWith(
          DoctorProfileState value, $Res Function(DoctorProfileState) then) =
      _$DoctorProfileStateCopyWithImpl<$Res, DoctorProfileState>;
  @useResult
  $Res call({ApiResponse<DoctorProfileModel> profile});
}

/// @nodoc
class _$DoctorProfileStateCopyWithImpl<$Res, $Val extends DoctorProfileState>
    implements $DoctorProfileStateCopyWith<$Res> {
  _$DoctorProfileStateCopyWithImpl(this._value, this._then);

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
abstract class _$$_DoctorProfileStateCopyWith<$Res>
    implements $DoctorProfileStateCopyWith<$Res> {
  factory _$$_DoctorProfileStateCopyWith(_$_DoctorProfileState value,
          $Res Function(_$_DoctorProfileState) then) =
      __$$_DoctorProfileStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ApiResponse<DoctorProfileModel> profile});
}

/// @nodoc
class __$$_DoctorProfileStateCopyWithImpl<$Res>
    extends _$DoctorProfileStateCopyWithImpl<$Res, _$_DoctorProfileState>
    implements _$$_DoctorProfileStateCopyWith<$Res> {
  __$$_DoctorProfileStateCopyWithImpl(
      _$_DoctorProfileState _value, $Res Function(_$_DoctorProfileState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profile = null,
  }) {
    return _then(_$_DoctorProfileState(
      profile: null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ApiResponse<DoctorProfileModel>,
    ));
  }
}

/// @nodoc

class _$_DoctorProfileState implements _DoctorProfileState {
  const _$_DoctorProfileState({required this.profile});

  @override
  final ApiResponse<DoctorProfileModel> profile;

  @override
  String toString() {
    return 'DoctorProfileState(profile: $profile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DoctorProfileState &&
            (identical(other.profile, profile) || other.profile == profile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, profile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DoctorProfileStateCopyWith<_$_DoctorProfileState> get copyWith =>
      __$$_DoctorProfileStateCopyWithImpl<_$_DoctorProfileState>(
          this, _$identity);
}

abstract class _DoctorProfileState implements DoctorProfileState {
  const factory _DoctorProfileState(
          {required final ApiResponse<DoctorProfileModel> profile}) =
      _$_DoctorProfileState;

  @override
  ApiResponse<DoctorProfileModel> get profile;
  @override
  @JsonKey(ignore: true)
  _$$_DoctorProfileStateCopyWith<_$_DoctorProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}
