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
    required TResult Function() getTopHospitalData,
    required TResult Function(int rating, String doctorId, String review)
        addFeedBack,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String hospitalId)? getHospitalDetails,
    TResult? Function()? getTopHospitalData,
    TResult? Function(int rating, String doctorId, String review)? addFeedBack,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String hospitalId)? getHospitalDetails,
    TResult Function()? getTopHospitalData,
    TResult Function(int rating, String doctorId, String review)? addFeedBack,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getHospitalDetails value) getHospitalDetails,
    required TResult Function(_getHospitalData value) getTopHospitalData,
    required TResult Function(_addFeedback value) addFeedBack,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getHospitalDetails value)? getHospitalDetails,
    TResult? Function(_getHospitalData value)? getTopHospitalData,
    TResult? Function(_addFeedback value)? addFeedBack,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getHospitalDetails value)? getHospitalDetails,
    TResult Function(_getHospitalData value)? getTopHospitalData,
    TResult Function(_addFeedback value)? addFeedBack,
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
abstract class _$$getHospitalDetailsImplCopyWith<$Res> {
  factory _$$getHospitalDetailsImplCopyWith(_$getHospitalDetailsImpl value,
          $Res Function(_$getHospitalDetailsImpl) then) =
      __$$getHospitalDetailsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String hospitalId});
}

/// @nodoc
class __$$getHospitalDetailsImplCopyWithImpl<$Res>
    extends _$HospitalEventCopyWithImpl<$Res, _$getHospitalDetailsImpl>
    implements _$$getHospitalDetailsImplCopyWith<$Res> {
  __$$getHospitalDetailsImplCopyWithImpl(_$getHospitalDetailsImpl _value,
      $Res Function(_$getHospitalDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hospitalId = null,
  }) {
    return _then(_$getHospitalDetailsImpl(
      hospitalId: null == hospitalId
          ? _value.hospitalId
          : hospitalId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$getHospitalDetailsImpl implements _getHospitalDetails {
  const _$getHospitalDetailsImpl({required this.hospitalId});

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
            other is _$getHospitalDetailsImpl &&
            (identical(other.hospitalId, hospitalId) ||
                other.hospitalId == hospitalId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, hospitalId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$getHospitalDetailsImplCopyWith<_$getHospitalDetailsImpl> get copyWith =>
      __$$getHospitalDetailsImplCopyWithImpl<_$getHospitalDetailsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String hospitalId) getHospitalDetails,
    required TResult Function() getTopHospitalData,
    required TResult Function(int rating, String doctorId, String review)
        addFeedBack,
  }) {
    return getHospitalDetails(hospitalId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String hospitalId)? getHospitalDetails,
    TResult? Function()? getTopHospitalData,
    TResult? Function(int rating, String doctorId, String review)? addFeedBack,
  }) {
    return getHospitalDetails?.call(hospitalId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String hospitalId)? getHospitalDetails,
    TResult Function()? getTopHospitalData,
    TResult Function(int rating, String doctorId, String review)? addFeedBack,
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
    required TResult Function(_getHospitalData value) getTopHospitalData,
    required TResult Function(_addFeedback value) addFeedBack,
  }) {
    return getHospitalDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getHospitalDetails value)? getHospitalDetails,
    TResult? Function(_getHospitalData value)? getTopHospitalData,
    TResult? Function(_addFeedback value)? addFeedBack,
  }) {
    return getHospitalDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getHospitalDetails value)? getHospitalDetails,
    TResult Function(_getHospitalData value)? getTopHospitalData,
    TResult Function(_addFeedback value)? addFeedBack,
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
      _$getHospitalDetailsImpl;

  String get hospitalId;
  @JsonKey(ignore: true)
  _$$getHospitalDetailsImplCopyWith<_$getHospitalDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$getHospitalDataImplCopyWith<$Res> {
  factory _$$getHospitalDataImplCopyWith(_$getHospitalDataImpl value,
          $Res Function(_$getHospitalDataImpl) then) =
      __$$getHospitalDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$getHospitalDataImplCopyWithImpl<$Res>
    extends _$HospitalEventCopyWithImpl<$Res, _$getHospitalDataImpl>
    implements _$$getHospitalDataImplCopyWith<$Res> {
  __$$getHospitalDataImplCopyWithImpl(
      _$getHospitalDataImpl _value, $Res Function(_$getHospitalDataImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$getHospitalDataImpl implements _getHospitalData {
  const _$getHospitalDataImpl();

  @override
  String toString() {
    return 'HospitalEvent.getTopHospitalData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$getHospitalDataImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String hospitalId) getHospitalDetails,
    required TResult Function() getTopHospitalData,
    required TResult Function(int rating, String doctorId, String review)
        addFeedBack,
  }) {
    return getTopHospitalData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String hospitalId)? getHospitalDetails,
    TResult? Function()? getTopHospitalData,
    TResult? Function(int rating, String doctorId, String review)? addFeedBack,
  }) {
    return getTopHospitalData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String hospitalId)? getHospitalDetails,
    TResult Function()? getTopHospitalData,
    TResult Function(int rating, String doctorId, String review)? addFeedBack,
    required TResult orElse(),
  }) {
    if (getTopHospitalData != null) {
      return getTopHospitalData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getHospitalDetails value) getHospitalDetails,
    required TResult Function(_getHospitalData value) getTopHospitalData,
    required TResult Function(_addFeedback value) addFeedBack,
  }) {
    return getTopHospitalData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getHospitalDetails value)? getHospitalDetails,
    TResult? Function(_getHospitalData value)? getTopHospitalData,
    TResult? Function(_addFeedback value)? addFeedBack,
  }) {
    return getTopHospitalData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getHospitalDetails value)? getHospitalDetails,
    TResult Function(_getHospitalData value)? getTopHospitalData,
    TResult Function(_addFeedback value)? addFeedBack,
    required TResult orElse(),
  }) {
    if (getTopHospitalData != null) {
      return getTopHospitalData(this);
    }
    return orElse();
  }
}

abstract class _getHospitalData implements HospitalEvent {
  const factory _getHospitalData() = _$getHospitalDataImpl;
}

/// @nodoc
abstract class _$$addFeedbackImplCopyWith<$Res> {
  factory _$$addFeedbackImplCopyWith(
          _$addFeedbackImpl value, $Res Function(_$addFeedbackImpl) then) =
      __$$addFeedbackImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int rating, String doctorId, String review});
}

/// @nodoc
class __$$addFeedbackImplCopyWithImpl<$Res>
    extends _$HospitalEventCopyWithImpl<$Res, _$addFeedbackImpl>
    implements _$$addFeedbackImplCopyWith<$Res> {
  __$$addFeedbackImplCopyWithImpl(
      _$addFeedbackImpl _value, $Res Function(_$addFeedbackImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rating = null,
    Object? doctorId = null,
    Object? review = null,
  }) {
    return _then(_$addFeedbackImpl(
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      doctorId: null == doctorId
          ? _value.doctorId
          : doctorId // ignore: cast_nullable_to_non_nullable
              as String,
      review: null == review
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$addFeedbackImpl implements _addFeedback {
  _$addFeedbackImpl(
      {required this.rating, required this.doctorId, required this.review});

  @override
  final int rating;
  @override
  final String doctorId;
  @override
  final String review;

  @override
  String toString() {
    return 'HospitalEvent.addFeedBack(rating: $rating, doctorId: $doctorId, review: $review)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$addFeedbackImpl &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.doctorId, doctorId) ||
                other.doctorId == doctorId) &&
            (identical(other.review, review) || other.review == review));
  }

  @override
  int get hashCode => Object.hash(runtimeType, rating, doctorId, review);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$addFeedbackImplCopyWith<_$addFeedbackImpl> get copyWith =>
      __$$addFeedbackImplCopyWithImpl<_$addFeedbackImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String hospitalId) getHospitalDetails,
    required TResult Function() getTopHospitalData,
    required TResult Function(int rating, String doctorId, String review)
        addFeedBack,
  }) {
    return addFeedBack(rating, doctorId, review);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String hospitalId)? getHospitalDetails,
    TResult? Function()? getTopHospitalData,
    TResult? Function(int rating, String doctorId, String review)? addFeedBack,
  }) {
    return addFeedBack?.call(rating, doctorId, review);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String hospitalId)? getHospitalDetails,
    TResult Function()? getTopHospitalData,
    TResult Function(int rating, String doctorId, String review)? addFeedBack,
    required TResult orElse(),
  }) {
    if (addFeedBack != null) {
      return addFeedBack(rating, doctorId, review);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getHospitalDetails value) getHospitalDetails,
    required TResult Function(_getHospitalData value) getTopHospitalData,
    required TResult Function(_addFeedback value) addFeedBack,
  }) {
    return addFeedBack(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getHospitalDetails value)? getHospitalDetails,
    TResult? Function(_getHospitalData value)? getTopHospitalData,
    TResult? Function(_addFeedback value)? addFeedBack,
  }) {
    return addFeedBack?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getHospitalDetails value)? getHospitalDetails,
    TResult Function(_getHospitalData value)? getTopHospitalData,
    TResult Function(_addFeedback value)? addFeedBack,
    required TResult orElse(),
  }) {
    if (addFeedBack != null) {
      return addFeedBack(this);
    }
    return orElse();
  }
}

abstract class _addFeedback implements HospitalEvent {
  factory _addFeedback(
      {required final int rating,
      required final String doctorId,
      required final String review}) = _$addFeedbackImpl;

  int get rating;
  String get doctorId;
  String get review;
  @JsonKey(ignore: true)
  _$$addFeedbackImplCopyWith<_$addFeedbackImpl> get copyWith =>
      throw _privateConstructorUsedError;
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
abstract class _$$HospitalStateImplCopyWith<$Res>
    implements $HospitalStateCopyWith<$Res> {
  factory _$$HospitalStateImplCopyWith(
          _$HospitalStateImpl value, $Res Function(_$HospitalStateImpl) then) =
      __$$HospitalStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ApiResponse<SingleHospital> hospitalDetails,
      ApiResponse<HospitalData> hospitalData});
}

/// @nodoc
class __$$HospitalStateImplCopyWithImpl<$Res>
    extends _$HospitalStateCopyWithImpl<$Res, _$HospitalStateImpl>
    implements _$$HospitalStateImplCopyWith<$Res> {
  __$$HospitalStateImplCopyWithImpl(
      _$HospitalStateImpl _value, $Res Function(_$HospitalStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hospitalDetails = null,
    Object? hospitalData = null,
  }) {
    return _then(_$HospitalStateImpl(
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

class _$HospitalStateImpl implements _HospitalState {
  const _$HospitalStateImpl(
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
            other is _$HospitalStateImpl &&
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
  _$$HospitalStateImplCopyWith<_$HospitalStateImpl> get copyWith =>
      __$$HospitalStateImplCopyWithImpl<_$HospitalStateImpl>(this, _$identity);
}

abstract class _HospitalState implements HospitalState {
  const factory _HospitalState(
          {required final ApiResponse<SingleHospital> hospitalDetails,
          required final ApiResponse<HospitalData> hospitalData}) =
      _$HospitalStateImpl;

  @override
  ApiResponse<SingleHospital> get hospitalDetails;
  @override
  ApiResponse<HospitalData> get hospitalData;
  @override
  @JsonKey(ignore: true)
  _$$HospitalStateImplCopyWith<_$HospitalStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
