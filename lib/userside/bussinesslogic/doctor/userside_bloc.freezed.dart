// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'userside_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UsersideEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) getByDepartmentDoctors,
    required TResult Function(String dId) getDoctor,
    required TResult Function(String dId) getDoctorSchedule,
    required TResult Function(int rating, String doctorId, String review)
        addFeedBack,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? getByDepartmentDoctors,
    TResult? Function(String dId)? getDoctor,
    TResult? Function(String dId)? getDoctorSchedule,
    TResult? Function(int rating, String doctorId, String review)? addFeedBack,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? getByDepartmentDoctors,
    TResult Function(String dId)? getDoctor,
    TResult Function(String dId)? getDoctorSchedule,
    TResult Function(int rating, String doctorId, String review)? addFeedBack,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getByDepartmentDoctors value)
        getByDepartmentDoctors,
    required TResult Function(_getDoctor value) getDoctor,
    required TResult Function(_getDoctorSchedule value) getDoctorSchedule,
    required TResult Function(_addFeedback value) addFeedBack,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getByDepartmentDoctors value)? getByDepartmentDoctors,
    TResult? Function(_getDoctor value)? getDoctor,
    TResult? Function(_getDoctorSchedule value)? getDoctorSchedule,
    TResult? Function(_addFeedback value)? addFeedBack,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getByDepartmentDoctors value)? getByDepartmentDoctors,
    TResult Function(_getDoctor value)? getDoctor,
    TResult Function(_getDoctorSchedule value)? getDoctorSchedule,
    TResult Function(_addFeedback value)? addFeedBack,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersideEventCopyWith<$Res> {
  factory $UsersideEventCopyWith(
          UsersideEvent value, $Res Function(UsersideEvent) then) =
      _$UsersideEventCopyWithImpl<$Res, UsersideEvent>;
}

/// @nodoc
class _$UsersideEventCopyWithImpl<$Res, $Val extends UsersideEvent>
    implements $UsersideEventCopyWith<$Res> {
  _$UsersideEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_getByDepartmentDoctorsCopyWith<$Res> {
  factory _$$_getByDepartmentDoctorsCopyWith(_$_getByDepartmentDoctors value,
          $Res Function(_$_getByDepartmentDoctors) then) =
      __$$_getByDepartmentDoctorsCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$_getByDepartmentDoctorsCopyWithImpl<$Res>
    extends _$UsersideEventCopyWithImpl<$Res, _$_getByDepartmentDoctors>
    implements _$$_getByDepartmentDoctorsCopyWith<$Res> {
  __$$_getByDepartmentDoctorsCopyWithImpl(_$_getByDepartmentDoctors _value,
      $Res Function(_$_getByDepartmentDoctors) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_getByDepartmentDoctors(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_getByDepartmentDoctors implements _getByDepartmentDoctors {
  const _$_getByDepartmentDoctors({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'UsersideEvent.getByDepartmentDoctors(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_getByDepartmentDoctors &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_getByDepartmentDoctorsCopyWith<_$_getByDepartmentDoctors> get copyWith =>
      __$$_getByDepartmentDoctorsCopyWithImpl<_$_getByDepartmentDoctors>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) getByDepartmentDoctors,
    required TResult Function(String dId) getDoctor,
    required TResult Function(String dId) getDoctorSchedule,
    required TResult Function(int rating, String doctorId, String review)
        addFeedBack,
  }) {
    return getByDepartmentDoctors(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? getByDepartmentDoctors,
    TResult? Function(String dId)? getDoctor,
    TResult? Function(String dId)? getDoctorSchedule,
    TResult? Function(int rating, String doctorId, String review)? addFeedBack,
  }) {
    return getByDepartmentDoctors?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? getByDepartmentDoctors,
    TResult Function(String dId)? getDoctor,
    TResult Function(String dId)? getDoctorSchedule,
    TResult Function(int rating, String doctorId, String review)? addFeedBack,
    required TResult orElse(),
  }) {
    if (getByDepartmentDoctors != null) {
      return getByDepartmentDoctors(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getByDepartmentDoctors value)
        getByDepartmentDoctors,
    required TResult Function(_getDoctor value) getDoctor,
    required TResult Function(_getDoctorSchedule value) getDoctorSchedule,
    required TResult Function(_addFeedback value) addFeedBack,
  }) {
    return getByDepartmentDoctors(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getByDepartmentDoctors value)? getByDepartmentDoctors,
    TResult? Function(_getDoctor value)? getDoctor,
    TResult? Function(_getDoctorSchedule value)? getDoctorSchedule,
    TResult? Function(_addFeedback value)? addFeedBack,
  }) {
    return getByDepartmentDoctors?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getByDepartmentDoctors value)? getByDepartmentDoctors,
    TResult Function(_getDoctor value)? getDoctor,
    TResult Function(_getDoctorSchedule value)? getDoctorSchedule,
    TResult Function(_addFeedback value)? addFeedBack,
    required TResult orElse(),
  }) {
    if (getByDepartmentDoctors != null) {
      return getByDepartmentDoctors(this);
    }
    return orElse();
  }
}

abstract class _getByDepartmentDoctors implements UsersideEvent {
  const factory _getByDepartmentDoctors({required final String id}) =
      _$_getByDepartmentDoctors;

  String get id;
  @JsonKey(ignore: true)
  _$$_getByDepartmentDoctorsCopyWith<_$_getByDepartmentDoctors> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_getDoctorCopyWith<$Res> {
  factory _$$_getDoctorCopyWith(
          _$_getDoctor value, $Res Function(_$_getDoctor) then) =
      __$$_getDoctorCopyWithImpl<$Res>;
  @useResult
  $Res call({String dId});
}

/// @nodoc
class __$$_getDoctorCopyWithImpl<$Res>
    extends _$UsersideEventCopyWithImpl<$Res, _$_getDoctor>
    implements _$$_getDoctorCopyWith<$Res> {
  __$$_getDoctorCopyWithImpl(
      _$_getDoctor _value, $Res Function(_$_getDoctor) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dId = null,
  }) {
    return _then(_$_getDoctor(
      dId: null == dId
          ? _value.dId
          : dId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_getDoctor implements _getDoctor {
  const _$_getDoctor({required this.dId});

  @override
  final String dId;

  @override
  String toString() {
    return 'UsersideEvent.getDoctor(dId: $dId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_getDoctor &&
            (identical(other.dId, dId) || other.dId == dId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_getDoctorCopyWith<_$_getDoctor> get copyWith =>
      __$$_getDoctorCopyWithImpl<_$_getDoctor>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) getByDepartmentDoctors,
    required TResult Function(String dId) getDoctor,
    required TResult Function(String dId) getDoctorSchedule,
    required TResult Function(int rating, String doctorId, String review)
        addFeedBack,
  }) {
    return getDoctor(dId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? getByDepartmentDoctors,
    TResult? Function(String dId)? getDoctor,
    TResult? Function(String dId)? getDoctorSchedule,
    TResult? Function(int rating, String doctorId, String review)? addFeedBack,
  }) {
    return getDoctor?.call(dId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? getByDepartmentDoctors,
    TResult Function(String dId)? getDoctor,
    TResult Function(String dId)? getDoctorSchedule,
    TResult Function(int rating, String doctorId, String review)? addFeedBack,
    required TResult orElse(),
  }) {
    if (getDoctor != null) {
      return getDoctor(dId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getByDepartmentDoctors value)
        getByDepartmentDoctors,
    required TResult Function(_getDoctor value) getDoctor,
    required TResult Function(_getDoctorSchedule value) getDoctorSchedule,
    required TResult Function(_addFeedback value) addFeedBack,
  }) {
    return getDoctor(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getByDepartmentDoctors value)? getByDepartmentDoctors,
    TResult? Function(_getDoctor value)? getDoctor,
    TResult? Function(_getDoctorSchedule value)? getDoctorSchedule,
    TResult? Function(_addFeedback value)? addFeedBack,
  }) {
    return getDoctor?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getByDepartmentDoctors value)? getByDepartmentDoctors,
    TResult Function(_getDoctor value)? getDoctor,
    TResult Function(_getDoctorSchedule value)? getDoctorSchedule,
    TResult Function(_addFeedback value)? addFeedBack,
    required TResult orElse(),
  }) {
    if (getDoctor != null) {
      return getDoctor(this);
    }
    return orElse();
  }
}

abstract class _getDoctor implements UsersideEvent {
  const factory _getDoctor({required final String dId}) = _$_getDoctor;

  String get dId;
  @JsonKey(ignore: true)
  _$$_getDoctorCopyWith<_$_getDoctor> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_getDoctorScheduleCopyWith<$Res> {
  factory _$$_getDoctorScheduleCopyWith(_$_getDoctorSchedule value,
          $Res Function(_$_getDoctorSchedule) then) =
      __$$_getDoctorScheduleCopyWithImpl<$Res>;
  @useResult
  $Res call({String dId});
}

/// @nodoc
class __$$_getDoctorScheduleCopyWithImpl<$Res>
    extends _$UsersideEventCopyWithImpl<$Res, _$_getDoctorSchedule>
    implements _$$_getDoctorScheduleCopyWith<$Res> {
  __$$_getDoctorScheduleCopyWithImpl(
      _$_getDoctorSchedule _value, $Res Function(_$_getDoctorSchedule) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dId = null,
  }) {
    return _then(_$_getDoctorSchedule(
      dId: null == dId
          ? _value.dId
          : dId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_getDoctorSchedule implements _getDoctorSchedule {
  const _$_getDoctorSchedule({required this.dId});

  @override
  final String dId;

  @override
  String toString() {
    return 'UsersideEvent.getDoctorSchedule(dId: $dId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_getDoctorSchedule &&
            (identical(other.dId, dId) || other.dId == dId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_getDoctorScheduleCopyWith<_$_getDoctorSchedule> get copyWith =>
      __$$_getDoctorScheduleCopyWithImpl<_$_getDoctorSchedule>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) getByDepartmentDoctors,
    required TResult Function(String dId) getDoctor,
    required TResult Function(String dId) getDoctorSchedule,
    required TResult Function(int rating, String doctorId, String review)
        addFeedBack,
  }) {
    return getDoctorSchedule(dId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? getByDepartmentDoctors,
    TResult? Function(String dId)? getDoctor,
    TResult? Function(String dId)? getDoctorSchedule,
    TResult? Function(int rating, String doctorId, String review)? addFeedBack,
  }) {
    return getDoctorSchedule?.call(dId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? getByDepartmentDoctors,
    TResult Function(String dId)? getDoctor,
    TResult Function(String dId)? getDoctorSchedule,
    TResult Function(int rating, String doctorId, String review)? addFeedBack,
    required TResult orElse(),
  }) {
    if (getDoctorSchedule != null) {
      return getDoctorSchedule(dId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getByDepartmentDoctors value)
        getByDepartmentDoctors,
    required TResult Function(_getDoctor value) getDoctor,
    required TResult Function(_getDoctorSchedule value) getDoctorSchedule,
    required TResult Function(_addFeedback value) addFeedBack,
  }) {
    return getDoctorSchedule(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getByDepartmentDoctors value)? getByDepartmentDoctors,
    TResult? Function(_getDoctor value)? getDoctor,
    TResult? Function(_getDoctorSchedule value)? getDoctorSchedule,
    TResult? Function(_addFeedback value)? addFeedBack,
  }) {
    return getDoctorSchedule?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getByDepartmentDoctors value)? getByDepartmentDoctors,
    TResult Function(_getDoctor value)? getDoctor,
    TResult Function(_getDoctorSchedule value)? getDoctorSchedule,
    TResult Function(_addFeedback value)? addFeedBack,
    required TResult orElse(),
  }) {
    if (getDoctorSchedule != null) {
      return getDoctorSchedule(this);
    }
    return orElse();
  }
}

abstract class _getDoctorSchedule implements UsersideEvent {
  const factory _getDoctorSchedule({required final String dId}) =
      _$_getDoctorSchedule;

  String get dId;
  @JsonKey(ignore: true)
  _$$_getDoctorScheduleCopyWith<_$_getDoctorSchedule> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_addFeedbackCopyWith<$Res> {
  factory _$$_addFeedbackCopyWith(
          _$_addFeedback value, $Res Function(_$_addFeedback) then) =
      __$$_addFeedbackCopyWithImpl<$Res>;
  @useResult
  $Res call({int rating, String doctorId, String review});
}

/// @nodoc
class __$$_addFeedbackCopyWithImpl<$Res>
    extends _$UsersideEventCopyWithImpl<$Res, _$_addFeedback>
    implements _$$_addFeedbackCopyWith<$Res> {
  __$$_addFeedbackCopyWithImpl(
      _$_addFeedback _value, $Res Function(_$_addFeedback) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rating = null,
    Object? doctorId = null,
    Object? review = null,
  }) {
    return _then(_$_addFeedback(
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

class _$_addFeedback implements _addFeedback {
  const _$_addFeedback(
      {required this.rating, required this.doctorId, required this.review});

  @override
  final int rating;
  @override
  final String doctorId;
  @override
  final String review;

  @override
  String toString() {
    return 'UsersideEvent.addFeedBack(rating: $rating, doctorId: $doctorId, review: $review)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_addFeedback &&
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
  _$$_addFeedbackCopyWith<_$_addFeedback> get copyWith =>
      __$$_addFeedbackCopyWithImpl<_$_addFeedback>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) getByDepartmentDoctors,
    required TResult Function(String dId) getDoctor,
    required TResult Function(String dId) getDoctorSchedule,
    required TResult Function(int rating, String doctorId, String review)
        addFeedBack,
  }) {
    return addFeedBack(rating, doctorId, review);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? getByDepartmentDoctors,
    TResult? Function(String dId)? getDoctor,
    TResult? Function(String dId)? getDoctorSchedule,
    TResult? Function(int rating, String doctorId, String review)? addFeedBack,
  }) {
    return addFeedBack?.call(rating, doctorId, review);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? getByDepartmentDoctors,
    TResult Function(String dId)? getDoctor,
    TResult Function(String dId)? getDoctorSchedule,
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
    required TResult Function(_getByDepartmentDoctors value)
        getByDepartmentDoctors,
    required TResult Function(_getDoctor value) getDoctor,
    required TResult Function(_getDoctorSchedule value) getDoctorSchedule,
    required TResult Function(_addFeedback value) addFeedBack,
  }) {
    return addFeedBack(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getByDepartmentDoctors value)? getByDepartmentDoctors,
    TResult? Function(_getDoctor value)? getDoctor,
    TResult? Function(_getDoctorSchedule value)? getDoctorSchedule,
    TResult? Function(_addFeedback value)? addFeedBack,
  }) {
    return addFeedBack?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getByDepartmentDoctors value)? getByDepartmentDoctors,
    TResult Function(_getDoctor value)? getDoctor,
    TResult Function(_getDoctorSchedule value)? getDoctorSchedule,
    TResult Function(_addFeedback value)? addFeedBack,
    required TResult orElse(),
  }) {
    if (addFeedBack != null) {
      return addFeedBack(this);
    }
    return orElse();
  }
}

abstract class _addFeedback implements UsersideEvent {
  const factory _addFeedback(
      {required final int rating,
      required final String doctorId,
      required final String review}) = _$_addFeedback;

  int get rating;
  String get doctorId;
  String get review;
  @JsonKey(ignore: true)
  _$$_addFeedbackCopyWith<_$_addFeedback> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UsersideState {
  ApiResponse<DoctorByDepartment> get doctorData =>
      throw _privateConstructorUsedError;
  ApiResponse<DocterTrial> get doctorDetails =>
      throw _privateConstructorUsedError;
  ApiResponse<DoctorSchedule> get schedule =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UsersideStateCopyWith<UsersideState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersideStateCopyWith<$Res> {
  factory $UsersideStateCopyWith(
          UsersideState value, $Res Function(UsersideState) then) =
      _$UsersideStateCopyWithImpl<$Res, UsersideState>;
  @useResult
  $Res call(
      {ApiResponse<DoctorByDepartment> doctorData,
      ApiResponse<DocterTrial> doctorDetails,
      ApiResponse<DoctorSchedule> schedule});
}

/// @nodoc
class _$UsersideStateCopyWithImpl<$Res, $Val extends UsersideState>
    implements $UsersideStateCopyWith<$Res> {
  _$UsersideStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? doctorData = null,
    Object? doctorDetails = null,
    Object? schedule = null,
  }) {
    return _then(_value.copyWith(
      doctorData: null == doctorData
          ? _value.doctorData
          : doctorData // ignore: cast_nullable_to_non_nullable
              as ApiResponse<DoctorByDepartment>,
      doctorDetails: null == doctorDetails
          ? _value.doctorDetails
          : doctorDetails // ignore: cast_nullable_to_non_nullable
              as ApiResponse<DocterTrial>,
      schedule: null == schedule
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as ApiResponse<DoctorSchedule>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UsersideStateCopyWith<$Res>
    implements $UsersideStateCopyWith<$Res> {
  factory _$$_UsersideStateCopyWith(
          _$_UsersideState value, $Res Function(_$_UsersideState) then) =
      __$$_UsersideStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ApiResponse<DoctorByDepartment> doctorData,
      ApiResponse<DocterTrial> doctorDetails,
      ApiResponse<DoctorSchedule> schedule});
}

/// @nodoc
class __$$_UsersideStateCopyWithImpl<$Res>
    extends _$UsersideStateCopyWithImpl<$Res, _$_UsersideState>
    implements _$$_UsersideStateCopyWith<$Res> {
  __$$_UsersideStateCopyWithImpl(
      _$_UsersideState _value, $Res Function(_$_UsersideState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? doctorData = null,
    Object? doctorDetails = null,
    Object? schedule = null,
  }) {
    return _then(_$_UsersideState(
      doctorData: null == doctorData
          ? _value.doctorData
          : doctorData // ignore: cast_nullable_to_non_nullable
              as ApiResponse<DoctorByDepartment>,
      doctorDetails: null == doctorDetails
          ? _value.doctorDetails
          : doctorDetails // ignore: cast_nullable_to_non_nullable
              as ApiResponse<DocterTrial>,
      schedule: null == schedule
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as ApiResponse<DoctorSchedule>,
    ));
  }
}

/// @nodoc

class _$_UsersideState implements _UsersideState {
  const _$_UsersideState(
      {required this.doctorData,
      required this.doctorDetails,
      required this.schedule});

  @override
  final ApiResponse<DoctorByDepartment> doctorData;
  @override
  final ApiResponse<DocterTrial> doctorDetails;
  @override
  final ApiResponse<DoctorSchedule> schedule;

  @override
  String toString() {
    return 'UsersideState(doctorData: $doctorData, doctorDetails: $doctorDetails, schedule: $schedule)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UsersideState &&
            (identical(other.doctorData, doctorData) ||
                other.doctorData == doctorData) &&
            (identical(other.doctorDetails, doctorDetails) ||
                other.doctorDetails == doctorDetails) &&
            (identical(other.schedule, schedule) ||
                other.schedule == schedule));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, doctorData, doctorDetails, schedule);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UsersideStateCopyWith<_$_UsersideState> get copyWith =>
      __$$_UsersideStateCopyWithImpl<_$_UsersideState>(this, _$identity);
}

abstract class _UsersideState implements UsersideState {
  const factory _UsersideState(
      {required final ApiResponse<DoctorByDepartment> doctorData,
      required final ApiResponse<DocterTrial> doctorDetails,
      required final ApiResponse<DoctorSchedule> schedule}) = _$_UsersideState;

  @override
  ApiResponse<DoctorByDepartment> get doctorData;
  @override
  ApiResponse<DocterTrial> get doctorDetails;
  @override
  ApiResponse<DoctorSchedule> get schedule;
  @override
  @JsonKey(ignore: true)
  _$$_UsersideStateCopyWith<_$_UsersideState> get copyWith =>
      throw _privateConstructorUsedError;
}
