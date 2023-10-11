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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String bookingId) getEmr,
    required TResult Function() enableEdit,
    required TResult Function(
            String userId,
            String bookingId,
            String prescription,
            String patientName,
            int age,
            int weight,
            String gender)
        addEmr,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String bookingId)? getEmr,
    TResult? Function()? enableEdit,
    TResult? Function(String userId, String bookingId, String prescription,
            String patientName, int age, int weight, String gender)?
        addEmr,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String bookingId)? getEmr,
    TResult Function()? enableEdit,
    TResult Function(String userId, String bookingId, String prescription,
            String patientName, int age, int weight, String gender)?
        addEmr,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getemr value) getEmr,
    required TResult Function(_enableEdit value) enableEdit,
    required TResult Function(_addemr value) addEmr,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getemr value)? getEmr,
    TResult? Function(_enableEdit value)? enableEdit,
    TResult? Function(_addemr value)? addEmr,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getemr value)? getEmr,
    TResult Function(_enableEdit value)? enableEdit,
    TResult Function(_addemr value)? addEmr,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmrEventCopyWith<$Res> {
  factory $EmrEventCopyWith(EmrEvent value, $Res Function(EmrEvent) then) =
      _$EmrEventCopyWithImpl<$Res, EmrEvent>;
}

/// @nodoc
class _$EmrEventCopyWithImpl<$Res, $Val extends EmrEvent>
    implements $EmrEventCopyWith<$Res> {
  _$EmrEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$getemrImplCopyWith<$Res> {
  factory _$$getemrImplCopyWith(
          _$getemrImpl value, $Res Function(_$getemrImpl) then) =
      __$$getemrImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String bookingId});
}

/// @nodoc
class __$$getemrImplCopyWithImpl<$Res>
    extends _$EmrEventCopyWithImpl<$Res, _$getemrImpl>
    implements _$$getemrImplCopyWith<$Res> {
  __$$getemrImplCopyWithImpl(
      _$getemrImpl _value, $Res Function(_$getemrImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookingId = null,
  }) {
    return _then(_$getemrImpl(
      bookingId: null == bookingId
          ? _value.bookingId
          : bookingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$getemrImpl implements _getemr {
  const _$getemrImpl({required this.bookingId});

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
            other is _$getemrImpl &&
            (identical(other.bookingId, bookingId) ||
                other.bookingId == bookingId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bookingId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$getemrImplCopyWith<_$getemrImpl> get copyWith =>
      __$$getemrImplCopyWithImpl<_$getemrImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String bookingId) getEmr,
    required TResult Function() enableEdit,
    required TResult Function(
            String userId,
            String bookingId,
            String prescription,
            String patientName,
            int age,
            int weight,
            String gender)
        addEmr,
  }) {
    return getEmr(bookingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String bookingId)? getEmr,
    TResult? Function()? enableEdit,
    TResult? Function(String userId, String bookingId, String prescription,
            String patientName, int age, int weight, String gender)?
        addEmr,
  }) {
    return getEmr?.call(bookingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String bookingId)? getEmr,
    TResult Function()? enableEdit,
    TResult Function(String userId, String bookingId, String prescription,
            String patientName, int age, int weight, String gender)?
        addEmr,
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
    required TResult Function(_enableEdit value) enableEdit,
    required TResult Function(_addemr value) addEmr,
  }) {
    return getEmr(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getemr value)? getEmr,
    TResult? Function(_enableEdit value)? enableEdit,
    TResult? Function(_addemr value)? addEmr,
  }) {
    return getEmr?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getemr value)? getEmr,
    TResult Function(_enableEdit value)? enableEdit,
    TResult Function(_addemr value)? addEmr,
    required TResult orElse(),
  }) {
    if (getEmr != null) {
      return getEmr(this);
    }
    return orElse();
  }
}

abstract class _getemr implements EmrEvent {
  const factory _getemr({required final String bookingId}) = _$getemrImpl;

  String get bookingId;
  @JsonKey(ignore: true)
  _$$getemrImplCopyWith<_$getemrImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$enableEditImplCopyWith<$Res> {
  factory _$$enableEditImplCopyWith(
          _$enableEditImpl value, $Res Function(_$enableEditImpl) then) =
      __$$enableEditImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$enableEditImplCopyWithImpl<$Res>
    extends _$EmrEventCopyWithImpl<$Res, _$enableEditImpl>
    implements _$$enableEditImplCopyWith<$Res> {
  __$$enableEditImplCopyWithImpl(
      _$enableEditImpl _value, $Res Function(_$enableEditImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$enableEditImpl implements _enableEdit {
  const _$enableEditImpl();

  @override
  String toString() {
    return 'EmrEvent.enableEdit()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$enableEditImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String bookingId) getEmr,
    required TResult Function() enableEdit,
    required TResult Function(
            String userId,
            String bookingId,
            String prescription,
            String patientName,
            int age,
            int weight,
            String gender)
        addEmr,
  }) {
    return enableEdit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String bookingId)? getEmr,
    TResult? Function()? enableEdit,
    TResult? Function(String userId, String bookingId, String prescription,
            String patientName, int age, int weight, String gender)?
        addEmr,
  }) {
    return enableEdit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String bookingId)? getEmr,
    TResult Function()? enableEdit,
    TResult Function(String userId, String bookingId, String prescription,
            String patientName, int age, int weight, String gender)?
        addEmr,
    required TResult orElse(),
  }) {
    if (enableEdit != null) {
      return enableEdit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getemr value) getEmr,
    required TResult Function(_enableEdit value) enableEdit,
    required TResult Function(_addemr value) addEmr,
  }) {
    return enableEdit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getemr value)? getEmr,
    TResult? Function(_enableEdit value)? enableEdit,
    TResult? Function(_addemr value)? addEmr,
  }) {
    return enableEdit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getemr value)? getEmr,
    TResult Function(_enableEdit value)? enableEdit,
    TResult Function(_addemr value)? addEmr,
    required TResult orElse(),
  }) {
    if (enableEdit != null) {
      return enableEdit(this);
    }
    return orElse();
  }
}

abstract class _enableEdit implements EmrEvent {
  const factory _enableEdit() = _$enableEditImpl;
}

/// @nodoc
abstract class _$$addemrImplCopyWith<$Res> {
  factory _$$addemrImplCopyWith(
          _$addemrImpl value, $Res Function(_$addemrImpl) then) =
      __$$addemrImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String userId,
      String bookingId,
      String prescription,
      String patientName,
      int age,
      int weight,
      String gender});
}

/// @nodoc
class __$$addemrImplCopyWithImpl<$Res>
    extends _$EmrEventCopyWithImpl<$Res, _$addemrImpl>
    implements _$$addemrImplCopyWith<$Res> {
  __$$addemrImplCopyWithImpl(
      _$addemrImpl _value, $Res Function(_$addemrImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? bookingId = null,
    Object? prescription = null,
    Object? patientName = null,
    Object? age = null,
    Object? weight = null,
    Object? gender = null,
  }) {
    return _then(_$addemrImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      bookingId: null == bookingId
          ? _value.bookingId
          : bookingId // ignore: cast_nullable_to_non_nullable
              as String,
      prescription: null == prescription
          ? _value.prescription
          : prescription // ignore: cast_nullable_to_non_nullable
              as String,
      patientName: null == patientName
          ? _value.patientName
          : patientName // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$addemrImpl implements _addemr {
  const _$addemrImpl(
      {required this.userId,
      required this.bookingId,
      required this.prescription,
      required this.patientName,
      required this.age,
      required this.weight,
      required this.gender});

  @override
  final String userId;
  @override
  final String bookingId;
  @override
  final String prescription;
  @override
  final String patientName;
  @override
  final int age;
  @override
  final int weight;
  @override
  final String gender;

  @override
  String toString() {
    return 'EmrEvent.addEmr(userId: $userId, bookingId: $bookingId, prescription: $prescription, patientName: $patientName, age: $age, weight: $weight, gender: $gender)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$addemrImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.bookingId, bookingId) ||
                other.bookingId == bookingId) &&
            (identical(other.prescription, prescription) ||
                other.prescription == prescription) &&
            (identical(other.patientName, patientName) ||
                other.patientName == patientName) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.gender, gender) || other.gender == gender));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, bookingId, prescription,
      patientName, age, weight, gender);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$addemrImplCopyWith<_$addemrImpl> get copyWith =>
      __$$addemrImplCopyWithImpl<_$addemrImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String bookingId) getEmr,
    required TResult Function() enableEdit,
    required TResult Function(
            String userId,
            String bookingId,
            String prescription,
            String patientName,
            int age,
            int weight,
            String gender)
        addEmr,
  }) {
    return addEmr(
        userId, bookingId, prescription, patientName, age, weight, gender);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String bookingId)? getEmr,
    TResult? Function()? enableEdit,
    TResult? Function(String userId, String bookingId, String prescription,
            String patientName, int age, int weight, String gender)?
        addEmr,
  }) {
    return addEmr?.call(
        userId, bookingId, prescription, patientName, age, weight, gender);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String bookingId)? getEmr,
    TResult Function()? enableEdit,
    TResult Function(String userId, String bookingId, String prescription,
            String patientName, int age, int weight, String gender)?
        addEmr,
    required TResult orElse(),
  }) {
    if (addEmr != null) {
      return addEmr(
          userId, bookingId, prescription, patientName, age, weight, gender);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getemr value) getEmr,
    required TResult Function(_enableEdit value) enableEdit,
    required TResult Function(_addemr value) addEmr,
  }) {
    return addEmr(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getemr value)? getEmr,
    TResult? Function(_enableEdit value)? enableEdit,
    TResult? Function(_addemr value)? addEmr,
  }) {
    return addEmr?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getemr value)? getEmr,
    TResult Function(_enableEdit value)? enableEdit,
    TResult Function(_addemr value)? addEmr,
    required TResult orElse(),
  }) {
    if (addEmr != null) {
      return addEmr(this);
    }
    return orElse();
  }
}

abstract class _addemr implements EmrEvent {
  const factory _addemr(
      {required final String userId,
      required final String bookingId,
      required final String prescription,
      required final String patientName,
      required final int age,
      required final int weight,
      required final String gender}) = _$addemrImpl;

  String get userId;
  String get bookingId;
  String get prescription;
  String get patientName;
  int get age;
  int get weight;
  String get gender;
  @JsonKey(ignore: true)
  _$$addemrImplCopyWith<_$addemrImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EmrState {
  ApiResponse<EmrResponseModel> get emrDetails =>
      throw _privateConstructorUsedError;
  bool get editEmr => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EmrStateCopyWith<EmrState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmrStateCopyWith<$Res> {
  factory $EmrStateCopyWith(EmrState value, $Res Function(EmrState) then) =
      _$EmrStateCopyWithImpl<$Res, EmrState>;
  @useResult
  $Res call({ApiResponse<EmrResponseModel> emrDetails, bool editEmr});
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
    Object? editEmr = null,
  }) {
    return _then(_value.copyWith(
      emrDetails: null == emrDetails
          ? _value.emrDetails
          : emrDetails // ignore: cast_nullable_to_non_nullable
              as ApiResponse<EmrResponseModel>,
      editEmr: null == editEmr
          ? _value.editEmr
          : editEmr // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$emrStateImplCopyWith<$Res>
    implements $EmrStateCopyWith<$Res> {
  factory _$$emrStateImplCopyWith(
          _$emrStateImpl value, $Res Function(_$emrStateImpl) then) =
      __$$emrStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ApiResponse<EmrResponseModel> emrDetails, bool editEmr});
}

/// @nodoc
class __$$emrStateImplCopyWithImpl<$Res>
    extends _$EmrStateCopyWithImpl<$Res, _$emrStateImpl>
    implements _$$emrStateImplCopyWith<$Res> {
  __$$emrStateImplCopyWithImpl(
      _$emrStateImpl _value, $Res Function(_$emrStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emrDetails = null,
    Object? editEmr = null,
  }) {
    return _then(_$emrStateImpl(
      emrDetails: null == emrDetails
          ? _value.emrDetails
          : emrDetails // ignore: cast_nullable_to_non_nullable
              as ApiResponse<EmrResponseModel>,
      editEmr: null == editEmr
          ? _value.editEmr
          : editEmr // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$emrStateImpl implements emrState {
  const _$emrStateImpl({required this.emrDetails, required this.editEmr});

  @override
  final ApiResponse<EmrResponseModel> emrDetails;
  @override
  final bool editEmr;

  @override
  String toString() {
    return 'EmrState(emrDetails: $emrDetails, editEmr: $editEmr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$emrStateImpl &&
            (identical(other.emrDetails, emrDetails) ||
                other.emrDetails == emrDetails) &&
            (identical(other.editEmr, editEmr) || other.editEmr == editEmr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, emrDetails, editEmr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$emrStateImplCopyWith<_$emrStateImpl> get copyWith =>
      __$$emrStateImplCopyWithImpl<_$emrStateImpl>(this, _$identity);
}

abstract class emrState implements EmrState {
  const factory emrState(
      {required final ApiResponse<EmrResponseModel> emrDetails,
      required final bool editEmr}) = _$emrStateImpl;

  @override
  ApiResponse<EmrResponseModel> get emrDetails;
  @override
  bool get editEmr;
  @override
  @JsonKey(ignore: true)
  _$$emrStateImplCopyWith<_$emrStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
