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
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? getByDepartmentDoctors,
    TResult? Function(String dId)? getDoctor,
    TResult? Function(String dId)? getDoctorSchedule,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? getByDepartmentDoctors,
    TResult Function(String dId)? getDoctor,
    TResult Function(String dId)? getDoctorSchedule,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getByDepartmentDoctors value)
        getByDepartmentDoctors,
    required TResult Function(_getDoctor value) getDoctor,
    required TResult Function(_getDoctorSchedule value) getDoctorSchedule,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getByDepartmentDoctors value)? getByDepartmentDoctors,
    TResult? Function(_getDoctor value)? getDoctor,
    TResult? Function(_getDoctorSchedule value)? getDoctorSchedule,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getByDepartmentDoctors value)? getByDepartmentDoctors,
    TResult Function(_getDoctor value)? getDoctor,
    TResult Function(_getDoctorSchedule value)? getDoctorSchedule,
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
  }) {
    return getByDepartmentDoctors(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? getByDepartmentDoctors,
    TResult? Function(String dId)? getDoctor,
    TResult? Function(String dId)? getDoctorSchedule,
  }) {
    return getByDepartmentDoctors?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? getByDepartmentDoctors,
    TResult Function(String dId)? getDoctor,
    TResult Function(String dId)? getDoctorSchedule,
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
  }) {
    return getByDepartmentDoctors(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getByDepartmentDoctors value)? getByDepartmentDoctors,
    TResult? Function(_getDoctor value)? getDoctor,
    TResult? Function(_getDoctorSchedule value)? getDoctorSchedule,
  }) {
    return getByDepartmentDoctors?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getByDepartmentDoctors value)? getByDepartmentDoctors,
    TResult Function(_getDoctor value)? getDoctor,
    TResult Function(_getDoctorSchedule value)? getDoctorSchedule,
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
  }) {
    return getDoctor(dId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? getByDepartmentDoctors,
    TResult? Function(String dId)? getDoctor,
    TResult? Function(String dId)? getDoctorSchedule,
  }) {
    return getDoctor?.call(dId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? getByDepartmentDoctors,
    TResult Function(String dId)? getDoctor,
    TResult Function(String dId)? getDoctorSchedule,
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
  }) {
    return getDoctor(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getByDepartmentDoctors value)? getByDepartmentDoctors,
    TResult? Function(_getDoctor value)? getDoctor,
    TResult? Function(_getDoctorSchedule value)? getDoctorSchedule,
  }) {
    return getDoctor?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getByDepartmentDoctors value)? getByDepartmentDoctors,
    TResult Function(_getDoctor value)? getDoctor,
    TResult Function(_getDoctorSchedule value)? getDoctorSchedule,
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
  }) {
    return getDoctorSchedule(dId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? getByDepartmentDoctors,
    TResult? Function(String dId)? getDoctor,
    TResult? Function(String dId)? getDoctorSchedule,
  }) {
    return getDoctorSchedule?.call(dId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? getByDepartmentDoctors,
    TResult Function(String dId)? getDoctor,
    TResult Function(String dId)? getDoctorSchedule,
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
  }) {
    return getDoctorSchedule(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getByDepartmentDoctors value)? getByDepartmentDoctors,
    TResult? Function(_getDoctor value)? getDoctor,
    TResult? Function(_getDoctorSchedule value)? getDoctorSchedule,
  }) {
    return getDoctorSchedule?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getByDepartmentDoctors value)? getByDepartmentDoctors,
    TResult Function(_getDoctor value)? getDoctor,
    TResult Function(_getDoctorSchedule value)? getDoctorSchedule,
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
mixin _$UsersideState {
  bool get isLoading => throw _privateConstructorUsedError;
  DoctorByDepartment? get doctorData => throw _privateConstructorUsedError;
  DocterTrial? get doctorDetails => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  DoctorSchedule? get schedule => throw _privateConstructorUsedError;
  List<Doctors> get searchResult => throw _privateConstructorUsedError;

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
      {bool isLoading,
      DoctorByDepartment? doctorData,
      DocterTrial? doctorDetails,
      bool isError,
      DoctorSchedule? schedule,
      List<Doctors> searchResult});
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
    Object? isLoading = null,
    Object? doctorData = freezed,
    Object? doctorDetails = freezed,
    Object? isError = null,
    Object? schedule = freezed,
    Object? searchResult = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      doctorData: freezed == doctorData
          ? _value.doctorData
          : doctorData // ignore: cast_nullable_to_non_nullable
              as DoctorByDepartment?,
      doctorDetails: freezed == doctorDetails
          ? _value.doctorDetails
          : doctorDetails // ignore: cast_nullable_to_non_nullable
              as DocterTrial?,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      schedule: freezed == schedule
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as DoctorSchedule?,
      searchResult: null == searchResult
          ? _value.searchResult
          : searchResult // ignore: cast_nullable_to_non_nullable
              as List<Doctors>,
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
      {bool isLoading,
      DoctorByDepartment? doctorData,
      DocterTrial? doctorDetails,
      bool isError,
      DoctorSchedule? schedule,
      List<Doctors> searchResult});
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
    Object? isLoading = null,
    Object? doctorData = freezed,
    Object? doctorDetails = freezed,
    Object? isError = null,
    Object? schedule = freezed,
    Object? searchResult = null,
  }) {
    return _then(_$_UsersideState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      doctorData: freezed == doctorData
          ? _value.doctorData
          : doctorData // ignore: cast_nullable_to_non_nullable
              as DoctorByDepartment?,
      doctorDetails: freezed == doctorDetails
          ? _value.doctorDetails
          : doctorDetails // ignore: cast_nullable_to_non_nullable
              as DocterTrial?,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      schedule: freezed == schedule
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as DoctorSchedule?,
      searchResult: null == searchResult
          ? _value._searchResult
          : searchResult // ignore: cast_nullable_to_non_nullable
              as List<Doctors>,
    ));
  }
}

/// @nodoc

class _$_UsersideState implements _UsersideState {
  const _$_UsersideState(
      {required this.isLoading,
      required this.doctorData,
      required this.doctorDetails,
      required this.isError,
      required this.schedule,
      required final List<Doctors> searchResult})
      : _searchResult = searchResult;

  @override
  final bool isLoading;
  @override
  final DoctorByDepartment? doctorData;
  @override
  final DocterTrial? doctorDetails;
  @override
  final bool isError;
  @override
  final DoctorSchedule? schedule;
  final List<Doctors> _searchResult;
  @override
  List<Doctors> get searchResult {
    if (_searchResult is EqualUnmodifiableListView) return _searchResult;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchResult);
  }

  @override
  String toString() {
    return 'UsersideState(isLoading: $isLoading, doctorData: $doctorData, doctorDetails: $doctorDetails, isError: $isError, schedule: $schedule, searchResult: $searchResult)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UsersideState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.doctorData, doctorData) ||
                other.doctorData == doctorData) &&
            (identical(other.doctorDetails, doctorDetails) ||
                other.doctorDetails == doctorDetails) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.schedule, schedule) ||
                other.schedule == schedule) &&
            const DeepCollectionEquality()
                .equals(other._searchResult, _searchResult));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      doctorData,
      doctorDetails,
      isError,
      schedule,
      const DeepCollectionEquality().hash(_searchResult));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UsersideStateCopyWith<_$_UsersideState> get copyWith =>
      __$$_UsersideStateCopyWithImpl<_$_UsersideState>(this, _$identity);
}

abstract class _UsersideState implements UsersideState {
  const factory _UsersideState(
      {required final bool isLoading,
      required final DoctorByDepartment? doctorData,
      required final DocterTrial? doctorDetails,
      required final bool isError,
      required final DoctorSchedule? schedule,
      required final List<Doctors> searchResult}) = _$_UsersideState;

  @override
  bool get isLoading;
  @override
  DoctorByDepartment? get doctorData;
  @override
  DocterTrial? get doctorDetails;
  @override
  bool get isError;
  @override
  DoctorSchedule? get schedule;
  @override
  List<Doctors> get searchResult;
  @override
  @JsonKey(ignore: true)
  _$$_UsersideStateCopyWith<_$_UsersideState> get copyWith =>
      throw _privateConstructorUsedError;
}
