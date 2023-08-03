// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hospital_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HospitalEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String hospitalId) getHospitalDetails,
    required TResult Function() getHospitalData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String hospitalId)? getHospitalDetails,
    TResult? Function()? getHospitalData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String hospitalId)? getHospitalDetails,
    TResult Function()? getHospitalData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getHospitalDetails value) getHospitalDetails,
    required TResult Function(_getHospitalData value) getHospitalData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getHospitalDetails value)? getHospitalDetails,
    TResult? Function(_getHospitalData value)? getHospitalData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getHospitalDetails value)? getHospitalDetails,
    TResult Function(_getHospitalData value)? getHospitalData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HospitalEventCopyWith<$Res> {
  factory $HospitalEventCopyWith(
          HospitalEvent value, $Res Function(HospitalEvent) then) =
      _$HospitalEventCopyWithImpl<$Res, HospitalEvent>;
}

/// @nodoc
class _$HospitalEventCopyWithImpl<$Res, $Val extends HospitalEvent>
    implements $HospitalEventCopyWith<$Res> {
  _$HospitalEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_getHospitalDetailsCopyWith<$Res> {
  factory _$$_getHospitalDetailsCopyWith(_$_getHospitalDetails value,
          $Res Function(_$_getHospitalDetails) then) =
      __$$_getHospitalDetailsCopyWithImpl<$Res>;
  @useResult
  $Res call({String hospitalId});
}

/// @nodoc
class __$$_getHospitalDetailsCopyWithImpl<$Res>
    extends _$HospitalEventCopyWithImpl<$Res, _$_getHospitalDetails>
    implements _$$_getHospitalDetailsCopyWith<$Res> {
  __$$_getHospitalDetailsCopyWithImpl(
      _$_getHospitalDetails _value, $Res Function(_$_getHospitalDetails) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hospitalId = null,
  }) {
    return _then(_$_getHospitalDetails(
      hospitalId: null == hospitalId
          ? _value.hospitalId
          : hospitalId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_getHospitalDetails implements _getHospitalDetails {
  const _$_getHospitalDetails({required this.hospitalId});

  @override
  final String hospitalId;

  @override
  String toString() {
    return 'HospitalEvent.getHospitalDetails(hospitalId: $hospitalId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_getHospitalDetails &&
            (identical(other.hospitalId, hospitalId) ||
                other.hospitalId == hospitalId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, hospitalId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_getHospitalDetailsCopyWith<_$_getHospitalDetails> get copyWith =>
      __$$_getHospitalDetailsCopyWithImpl<_$_getHospitalDetails>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String hospitalId) getHospitalDetails,
    required TResult Function() getHospitalData,
  }) {
    return getHospitalDetails(hospitalId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String hospitalId)? getHospitalDetails,
    TResult? Function()? getHospitalData,
  }) {
    return getHospitalDetails?.call(hospitalId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String hospitalId)? getHospitalDetails,
    TResult Function()? getHospitalData,
    required TResult orElse(),
  }) {
    if (getHospitalDetails != null) {
      return getHospitalDetails(hospitalId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getHospitalDetails value) getHospitalDetails,
    required TResult Function(_getHospitalData value) getHospitalData,
  }) {
    return getHospitalDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getHospitalDetails value)? getHospitalDetails,
    TResult? Function(_getHospitalData value)? getHospitalData,
  }) {
    return getHospitalDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getHospitalDetails value)? getHospitalDetails,
    TResult Function(_getHospitalData value)? getHospitalData,
    required TResult orElse(),
  }) {
    if (getHospitalDetails != null) {
      return getHospitalDetails(this);
    }
    return orElse();
  }
}

abstract class _getHospitalDetails implements HospitalEvent {
  const factory _getHospitalDetails({required final String hospitalId}) =
      _$_getHospitalDetails;

  String get hospitalId;
  @JsonKey(ignore: true)
  _$$_getHospitalDetailsCopyWith<_$_getHospitalDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_getHospitalDataCopyWith<$Res> {
  factory _$$_getHospitalDataCopyWith(
          _$_getHospitalData value, $Res Function(_$_getHospitalData) then) =
      __$$_getHospitalDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_getHospitalDataCopyWithImpl<$Res>
    extends _$HospitalEventCopyWithImpl<$Res, _$_getHospitalData>
    implements _$$_getHospitalDataCopyWith<$Res> {
  __$$_getHospitalDataCopyWithImpl(
      _$_getHospitalData _value, $Res Function(_$_getHospitalData) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_getHospitalData implements _getHospitalData {
  const _$_getHospitalData();

  @override
  String toString() {
    return 'HospitalEvent.getHospitalData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_getHospitalData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String hospitalId) getHospitalDetails,
    required TResult Function() getHospitalData,
  }) {
    return getHospitalData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String hospitalId)? getHospitalDetails,
    TResult? Function()? getHospitalData,
  }) {
    return getHospitalData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String hospitalId)? getHospitalDetails,
    TResult Function()? getHospitalData,
    required TResult orElse(),
  }) {
    if (getHospitalData != null) {
      return getHospitalData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getHospitalDetails value) getHospitalDetails,
    required TResult Function(_getHospitalData value) getHospitalData,
  }) {
    return getHospitalData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getHospitalDetails value)? getHospitalDetails,
    TResult? Function(_getHospitalData value)? getHospitalData,
  }) {
    return getHospitalData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getHospitalDetails value)? getHospitalDetails,
    TResult Function(_getHospitalData value)? getHospitalData,
    required TResult orElse(),
  }) {
    if (getHospitalData != null) {
      return getHospitalData(this);
    }
    return orElse();
  }
}

abstract class _getHospitalData implements HospitalEvent {
  const factory _getHospitalData() = _$_getHospitalData;
}

/// @nodoc
mixin _$HospitalState {
  ApiResponse<SingleHospital> get hospitalDetails =>
      throw _privateConstructorUsedError;
  ApiResponse<HospitalData> get hospitalData =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HospitalStateCopyWith<HospitalState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HospitalStateCopyWith<$Res> {
  factory $HospitalStateCopyWith(
          HospitalState value, $Res Function(HospitalState) then) =
      _$HospitalStateCopyWithImpl<$Res, HospitalState>;
  @useResult
  $Res call(
      {ApiResponse<SingleHospital> hospitalDetails,
      ApiResponse<HospitalData> hospitalData});
}

/// @nodoc
class _$HospitalStateCopyWithImpl<$Res, $Val extends HospitalState>
    implements $HospitalStateCopyWith<$Res> {
  _$HospitalStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hospitalDetails = null,
    Object? hospitalData = null,
  }) {
    return _then(_value.copyWith(
      hospitalDetails: null == hospitalDetails
          ? _value.hospitalDetails
          : hospitalDetails // ignore: cast_nullable_to_non_nullable
              as ApiResponse<SingleHospital>,
      hospitalData: null == hospitalData
          ? _value.hospitalData
          : hospitalData // ignore: cast_nullable_to_non_nullable
              as ApiResponse<HospitalData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HospitalStateCopyWith<$Res>
    implements $HospitalStateCopyWith<$Res> {
  factory _$$_HospitalStateCopyWith(
          _$_HospitalState value, $Res Function(_$_HospitalState) then) =
      __$$_HospitalStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ApiResponse<SingleHospital> hospitalDetails,
      ApiResponse<HospitalData> hospitalData});
}

/// @nodoc
class __$$_HospitalStateCopyWithImpl<$Res>
    extends _$HospitalStateCopyWithImpl<$Res, _$_HospitalState>
    implements _$$_HospitalStateCopyWith<$Res> {
  __$$_HospitalStateCopyWithImpl(
      _$_HospitalState _value, $Res Function(_$_HospitalState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hospitalDetails = null,
    Object? hospitalData = null,
  }) {
    return _then(_$_HospitalState(
      hospitalDetails: null == hospitalDetails
          ? _value.hospitalDetails
          : hospitalDetails // ignore: cast_nullable_to_non_nullable
              as ApiResponse<SingleHospital>,
      hospitalData: null == hospitalData
          ? _value.hospitalData
          : hospitalData // ignore: cast_nullable_to_non_nullable
              as ApiResponse<HospitalData>,
    ));
  }
}

/// @nodoc

class _$_HospitalState implements _HospitalState {
  const _$_HospitalState(
      {required this.hospitalDetails, required this.hospitalData});

  @override
  final ApiResponse<SingleHospital> hospitalDetails;
  @override
  final ApiResponse<HospitalData> hospitalData;

  @override
  String toString() {
    return 'HospitalState(hospitalDetails: $hospitalDetails, hospitalData: $hospitalData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HospitalState &&
            (identical(other.hospitalDetails, hospitalDetails) ||
                other.hospitalDetails == hospitalDetails) &&
            (identical(other.hospitalData, hospitalData) ||
                other.hospitalData == hospitalData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, hospitalDetails, hospitalData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HospitalStateCopyWith<_$_HospitalState> get copyWith =>
      __$$_HospitalStateCopyWithImpl<_$_HospitalState>(this, _$identity);
}

abstract class _HospitalState implements HospitalState {
  const factory _HospitalState(
          {required final ApiResponse<SingleHospital> hospitalDetails,
          required final ApiResponse<HospitalData> hospitalData}) =
      _$_HospitalState;

  @override
  ApiResponse<SingleHospital> get hospitalDetails;
  @override
  ApiResponse<HospitalData> get hospitalData;
  @override
  @JsonKey(ignore: true)
  _$$_HospitalStateCopyWith<_$_HospitalState> get copyWith =>
      throw _privateConstructorUsedError;
}
