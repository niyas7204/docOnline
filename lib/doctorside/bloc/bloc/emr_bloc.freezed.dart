// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'emr_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EmrEvent {
  String get bookingId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String bookingId) getEmr,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String bookingId)? getEmr,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String bookingId)? getEmr,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getemr value) getEmr,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getemr value)? getEmr,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getemr value)? getEmr,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EmrEventCopyWith<EmrEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmrEventCopyWith<$Res> {
  factory $EmrEventCopyWith(EmrEvent value, $Res Function(EmrEvent) then) =
      _$EmrEventCopyWithImpl<$Res, EmrEvent>;
  @useResult
  $Res call({String bookingId});
}

/// @nodoc
class _$EmrEventCopyWithImpl<$Res, $Val extends EmrEvent>
    implements $EmrEventCopyWith<$Res> {
  _$EmrEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookingId = null,
  }) {
    return _then(_value.copyWith(
      bookingId: null == bookingId
          ? _value.bookingId
          : bookingId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_getemrCopyWith<$Res> implements $EmrEventCopyWith<$Res> {
  factory _$$_getemrCopyWith(_$_getemr value, $Res Function(_$_getemr) then) =
      __$$_getemrCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String bookingId});
}

/// @nodoc
class __$$_getemrCopyWithImpl<$Res>
    extends _$EmrEventCopyWithImpl<$Res, _$_getemr>
    implements _$$_getemrCopyWith<$Res> {
  __$$_getemrCopyWithImpl(_$_getemr _value, $Res Function(_$_getemr) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookingId = null,
  }) {
    return _then(_$_getemr(
      bookingId: null == bookingId
          ? _value.bookingId
          : bookingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_getemr implements _getemr {
  const _$_getemr({required this.bookingId});

  @override
  final String bookingId;

  @override
  String toString() {
    return 'EmrEvent.getEmr(bookingId: $bookingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_getemr &&
            (identical(other.bookingId, bookingId) ||
                other.bookingId == bookingId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bookingId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_getemrCopyWith<_$_getemr> get copyWith =>
      __$$_getemrCopyWithImpl<_$_getemr>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String bookingId) getEmr,
  }) {
    return getEmr(bookingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String bookingId)? getEmr,
  }) {
    return getEmr?.call(bookingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String bookingId)? getEmr,
    required TResult orElse(),
  }) {
    if (getEmr != null) {
      return getEmr(bookingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getemr value) getEmr,
  }) {
    return getEmr(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getemr value)? getEmr,
  }) {
    return getEmr?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getemr value)? getEmr,
    required TResult orElse(),
  }) {
    if (getEmr != null) {
      return getEmr(this);
    }
    return orElse();
  }
}

abstract class _getemr implements EmrEvent {
  const factory _getemr({required final String bookingId}) = _$_getemr;

  @override
  String get bookingId;
  @override
  @JsonKey(ignore: true)
  _$$_getemrCopyWith<_$_getemr> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EmrState {
  ApiResponse<EmrResponseModel> get emrDetails =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EmrStateCopyWith<EmrState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmrStateCopyWith<$Res> {
  factory $EmrStateCopyWith(EmrState value, $Res Function(EmrState) then) =
      _$EmrStateCopyWithImpl<$Res, EmrState>;
  @useResult
  $Res call({ApiResponse<EmrResponseModel> emrDetails});
}

/// @nodoc
class _$EmrStateCopyWithImpl<$Res, $Val extends EmrState>
    implements $EmrStateCopyWith<$Res> {
  _$EmrStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emrDetails = null,
  }) {
    return _then(_value.copyWith(
      emrDetails: null == emrDetails
          ? _value.emrDetails
          : emrDetails // ignore: cast_nullable_to_non_nullable
              as ApiResponse<EmrResponseModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$emrStateCopyWith<$Res> implements $EmrStateCopyWith<$Res> {
  factory _$$emrStateCopyWith(
          _$emrState value, $Res Function(_$emrState) then) =
      __$$emrStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ApiResponse<EmrResponseModel> emrDetails});
}

/// @nodoc
class __$$emrStateCopyWithImpl<$Res>
    extends _$EmrStateCopyWithImpl<$Res, _$emrState>
    implements _$$emrStateCopyWith<$Res> {
  __$$emrStateCopyWithImpl(_$emrState _value, $Res Function(_$emrState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emrDetails = null,
  }) {
    return _then(_$emrState(
      emrDetails: null == emrDetails
          ? _value.emrDetails
          : emrDetails // ignore: cast_nullable_to_non_nullable
              as ApiResponse<EmrResponseModel>,
    ));
  }
}

/// @nodoc

class _$emrState implements emrState {
  const _$emrState({required this.emrDetails});

  @override
  final ApiResponse<EmrResponseModel> emrDetails;

  @override
  String toString() {
    return 'EmrState(emrDetails: $emrDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$emrState &&
            (identical(other.emrDetails, emrDetails) ||
                other.emrDetails == emrDetails));
  }

  @override
  int get hashCode => Object.hash(runtimeType, emrDetails);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$emrStateCopyWith<_$emrState> get copyWith =>
      __$$emrStateCopyWithImpl<_$emrState>(this, _$identity);
}

abstract class emrState implements EmrState {
  const factory emrState(
      {required final ApiResponse<EmrResponseModel> emrDetails}) = _$emrState;

  @override
  ApiResponse<EmrResponseModel> get emrDetails;
  @override
  @JsonKey(ignore: true)
  _$$emrStateCopyWith<_$emrState> get copyWith =>
      throw _privateConstructorUsedError;
}
