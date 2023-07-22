// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUserprofile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUserprofile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUserprofile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(getUserprofile value) getUserprofile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(getUserprofile value)? getUserprofile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(getUserprofile value)? getUserprofile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileEventCopyWith<$Res> {
  factory $UserProfileEventCopyWith(
          UserProfileEvent value, $Res Function(UserProfileEvent) then) =
      _$UserProfileEventCopyWithImpl<$Res, UserProfileEvent>;
}

/// @nodoc
class _$UserProfileEventCopyWithImpl<$Res, $Val extends UserProfileEvent>
    implements $UserProfileEventCopyWith<$Res> {
  _$UserProfileEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$getUserprofileCopyWith<$Res> {
  factory _$$getUserprofileCopyWith(
          _$getUserprofile value, $Res Function(_$getUserprofile) then) =
      __$$getUserprofileCopyWithImpl<$Res>;
}

/// @nodoc
class __$$getUserprofileCopyWithImpl<$Res>
    extends _$UserProfileEventCopyWithImpl<$Res, _$getUserprofile>
    implements _$$getUserprofileCopyWith<$Res> {
  __$$getUserprofileCopyWithImpl(
      _$getUserprofile _value, $Res Function(_$getUserprofile) _then)
      : super(_value, _then);
}

/// @nodoc

class _$getUserprofile implements getUserprofile {
  const _$getUserprofile();

  @override
  String toString() {
    return 'UserProfileEvent.getUserprofile()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$getUserprofile);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUserprofile,
  }) {
    return getUserprofile();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUserprofile,
  }) {
    return getUserprofile?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUserprofile,
    required TResult orElse(),
  }) {
    if (getUserprofile != null) {
      return getUserprofile();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(getUserprofile value) getUserprofile,
  }) {
    return getUserprofile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(getUserprofile value)? getUserprofile,
  }) {
    return getUserprofile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(getUserprofile value)? getUserprofile,
    required TResult orElse(),
  }) {
    if (getUserprofile != null) {
      return getUserprofile(this);
    }
    return orElse();
  }
}

abstract class getUserprofile implements UserProfileEvent {
  const factory getUserprofile() = _$getUserprofile;
}

/// @nodoc
mixin _$UserProfileState {
  ApiResponse<UserProfileModel> get userProfile =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserProfileStateCopyWith<UserProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileStateCopyWith<$Res> {
  factory $UserProfileStateCopyWith(
          UserProfileState value, $Res Function(UserProfileState) then) =
      _$UserProfileStateCopyWithImpl<$Res, UserProfileState>;
  @useResult
  $Res call({ApiResponse<UserProfileModel> userProfile});
}

/// @nodoc
class _$UserProfileStateCopyWithImpl<$Res, $Val extends UserProfileState>
    implements $UserProfileStateCopyWith<$Res> {
  _$UserProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userProfile = null,
  }) {
    return _then(_value.copyWith(
      userProfile: null == userProfile
          ? _value.userProfile
          : userProfile // ignore: cast_nullable_to_non_nullable
              as ApiResponse<UserProfileModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$userProfileStateCopyWith<$Res>
    implements $UserProfileStateCopyWith<$Res> {
  factory _$$userProfileStateCopyWith(
          _$userProfileState value, $Res Function(_$userProfileState) then) =
      __$$userProfileStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ApiResponse<UserProfileModel> userProfile});
}

/// @nodoc
class __$$userProfileStateCopyWithImpl<$Res>
    extends _$UserProfileStateCopyWithImpl<$Res, _$userProfileState>
    implements _$$userProfileStateCopyWith<$Res> {
  __$$userProfileStateCopyWithImpl(
      _$userProfileState _value, $Res Function(_$userProfileState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userProfile = null,
  }) {
    return _then(_$userProfileState(
      userProfile: null == userProfile
          ? _value.userProfile
          : userProfile // ignore: cast_nullable_to_non_nullable
              as ApiResponse<UserProfileModel>,
    ));
  }
}

/// @nodoc

class _$userProfileState implements userProfileState {
  const _$userProfileState({required this.userProfile});

  @override
  final ApiResponse<UserProfileModel> userProfile;

  @override
  String toString() {
    return 'UserProfileState(userProfile: $userProfile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$userProfileState &&
            (identical(other.userProfile, userProfile) ||
                other.userProfile == userProfile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userProfile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$userProfileStateCopyWith<_$userProfileState> get copyWith =>
      __$$userProfileStateCopyWithImpl<_$userProfileState>(this, _$identity);
}

abstract class userProfileState implements UserProfileState {
  const factory userProfileState(
          {required final ApiResponse<UserProfileModel> userProfile}) =
      _$userProfileState;

  @override
  ApiResponse<UserProfileModel> get userProfile;
  @override
  @JsonKey(ignore: true)
  _$$userProfileStateCopyWith<_$userProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}
