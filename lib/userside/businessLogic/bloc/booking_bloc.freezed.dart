// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PatientBookingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UsersideState state) checkSlot,
    required TResult Function(int index) checkDateselection,
    required TResult Function(int timeindex) checkTimeselection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UsersideState state)? checkSlot,
    TResult? Function(int index)? checkDateselection,
    TResult? Function(int timeindex)? checkTimeselection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UsersideState state)? checkSlot,
    TResult Function(int index)? checkDateselection,
    TResult Function(int timeindex)? checkTimeselection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_checkSlot value) checkSlot,
    required TResult Function(_checkDateselection value) checkDateselection,
    required TResult Function(_checkTimeselection value) checkTimeselection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_checkSlot value)? checkSlot,
    TResult? Function(_checkDateselection value)? checkDateselection,
    TResult? Function(_checkTimeselection value)? checkTimeselection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_checkSlot value)? checkSlot,
    TResult Function(_checkDateselection value)? checkDateselection,
    TResult Function(_checkTimeselection value)? checkTimeselection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientBookingEventCopyWith<$Res> {
  factory $PatientBookingEventCopyWith(
          PatientBookingEvent value, $Res Function(PatientBookingEvent) then) =
      _$PatientBookingEventCopyWithImpl<$Res, PatientBookingEvent>;
}

/// @nodoc
class _$PatientBookingEventCopyWithImpl<$Res, $Val extends PatientBookingEvent>
    implements $PatientBookingEventCopyWith<$Res> {
  _$PatientBookingEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_checkSlotCopyWith<$Res> {
  factory _$$_checkSlotCopyWith(
          _$_checkSlot value, $Res Function(_$_checkSlot) then) =
      __$$_checkSlotCopyWithImpl<$Res>;
  @useResult
  $Res call({UsersideState state});

  $UsersideStateCopyWith<$Res> get state;
}

/// @nodoc
class __$$_checkSlotCopyWithImpl<$Res>
    extends _$PatientBookingEventCopyWithImpl<$Res, _$_checkSlot>
    implements _$$_checkSlotCopyWith<$Res> {
  __$$_checkSlotCopyWithImpl(
      _$_checkSlot _value, $Res Function(_$_checkSlot) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
  }) {
    return _then(_$_checkSlot(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as UsersideState,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UsersideStateCopyWith<$Res> get state {
    return $UsersideStateCopyWith<$Res>(_value.state, (value) {
      return _then(_value.copyWith(state: value));
    });
  }
}

/// @nodoc

class _$_checkSlot implements _checkSlot {
  const _$_checkSlot({required this.state});

  @override
  final UsersideState state;

  @override
  String toString() {
    return 'PatientBookingEvent.checkSlot(state: $state)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_checkSlot &&
            (identical(other.state, state) || other.state == state));
  }

  @override
  int get hashCode => Object.hash(runtimeType, state);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_checkSlotCopyWith<_$_checkSlot> get copyWith =>
      __$$_checkSlotCopyWithImpl<_$_checkSlot>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UsersideState state) checkSlot,
    required TResult Function(int index) checkDateselection,
    required TResult Function(int timeindex) checkTimeselection,
  }) {
    return checkSlot(state);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UsersideState state)? checkSlot,
    TResult? Function(int index)? checkDateselection,
    TResult? Function(int timeindex)? checkTimeselection,
  }) {
    return checkSlot?.call(state);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UsersideState state)? checkSlot,
    TResult Function(int index)? checkDateselection,
    TResult Function(int timeindex)? checkTimeselection,
    required TResult orElse(),
  }) {
    if (checkSlot != null) {
      return checkSlot(state);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_checkSlot value) checkSlot,
    required TResult Function(_checkDateselection value) checkDateselection,
    required TResult Function(_checkTimeselection value) checkTimeselection,
  }) {
    return checkSlot(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_checkSlot value)? checkSlot,
    TResult? Function(_checkDateselection value)? checkDateselection,
    TResult? Function(_checkTimeselection value)? checkTimeselection,
  }) {
    return checkSlot?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_checkSlot value)? checkSlot,
    TResult Function(_checkDateselection value)? checkDateselection,
    TResult Function(_checkTimeselection value)? checkTimeselection,
    required TResult orElse(),
  }) {
    if (checkSlot != null) {
      return checkSlot(this);
    }
    return orElse();
  }
}

abstract class _checkSlot implements PatientBookingEvent {
  const factory _checkSlot({required final UsersideState state}) = _$_checkSlot;

  UsersideState get state;
  @JsonKey(ignore: true)
  _$$_checkSlotCopyWith<_$_checkSlot> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_checkDateselectionCopyWith<$Res> {
  factory _$$_checkDateselectionCopyWith(_$_checkDateselection value,
          $Res Function(_$_checkDateselection) then) =
      __$$_checkDateselectionCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$_checkDateselectionCopyWithImpl<$Res>
    extends _$PatientBookingEventCopyWithImpl<$Res, _$_checkDateselection>
    implements _$$_checkDateselectionCopyWith<$Res> {
  __$$_checkDateselectionCopyWithImpl(
      _$_checkDateselection _value, $Res Function(_$_checkDateselection) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$_checkDateselection(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_checkDateselection implements _checkDateselection {
  const _$_checkDateselection({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'PatientBookingEvent.checkDateselection(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_checkDateselection &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_checkDateselectionCopyWith<_$_checkDateselection> get copyWith =>
      __$$_checkDateselectionCopyWithImpl<_$_checkDateselection>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UsersideState state) checkSlot,
    required TResult Function(int index) checkDateselection,
    required TResult Function(int timeindex) checkTimeselection,
  }) {
    return checkDateselection(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UsersideState state)? checkSlot,
    TResult? Function(int index)? checkDateselection,
    TResult? Function(int timeindex)? checkTimeselection,
  }) {
    return checkDateselection?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UsersideState state)? checkSlot,
    TResult Function(int index)? checkDateselection,
    TResult Function(int timeindex)? checkTimeselection,
    required TResult orElse(),
  }) {
    if (checkDateselection != null) {
      return checkDateselection(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_checkSlot value) checkSlot,
    required TResult Function(_checkDateselection value) checkDateselection,
    required TResult Function(_checkTimeselection value) checkTimeselection,
  }) {
    return checkDateselection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_checkSlot value)? checkSlot,
    TResult? Function(_checkDateselection value)? checkDateselection,
    TResult? Function(_checkTimeselection value)? checkTimeselection,
  }) {
    return checkDateselection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_checkSlot value)? checkSlot,
    TResult Function(_checkDateselection value)? checkDateselection,
    TResult Function(_checkTimeselection value)? checkTimeselection,
    required TResult orElse(),
  }) {
    if (checkDateselection != null) {
      return checkDateselection(this);
    }
    return orElse();
  }
}

abstract class _checkDateselection implements PatientBookingEvent {
  const factory _checkDateselection({required final int index}) =
      _$_checkDateselection;

  int get index;
  @JsonKey(ignore: true)
  _$$_checkDateselectionCopyWith<_$_checkDateselection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_checkTimeselectionCopyWith<$Res> {
  factory _$$_checkTimeselectionCopyWith(_$_checkTimeselection value,
          $Res Function(_$_checkTimeselection) then) =
      __$$_checkTimeselectionCopyWithImpl<$Res>;
  @useResult
  $Res call({int timeindex});
}

/// @nodoc
class __$$_checkTimeselectionCopyWithImpl<$Res>
    extends _$PatientBookingEventCopyWithImpl<$Res, _$_checkTimeselection>
    implements _$$_checkTimeselectionCopyWith<$Res> {
  __$$_checkTimeselectionCopyWithImpl(
      _$_checkTimeselection _value, $Res Function(_$_checkTimeselection) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timeindex = null,
  }) {
    return _then(_$_checkTimeselection(
      timeindex: null == timeindex
          ? _value.timeindex
          : timeindex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_checkTimeselection implements _checkTimeselection {
  const _$_checkTimeselection({required this.timeindex});

  @override
  final int timeindex;

  @override
  String toString() {
    return 'PatientBookingEvent.checkTimeselection(timeindex: $timeindex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_checkTimeselection &&
            (identical(other.timeindex, timeindex) ||
                other.timeindex == timeindex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, timeindex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_checkTimeselectionCopyWith<_$_checkTimeselection> get copyWith =>
      __$$_checkTimeselectionCopyWithImpl<_$_checkTimeselection>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UsersideState state) checkSlot,
    required TResult Function(int index) checkDateselection,
    required TResult Function(int timeindex) checkTimeselection,
  }) {
    return checkTimeselection(timeindex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UsersideState state)? checkSlot,
    TResult? Function(int index)? checkDateselection,
    TResult? Function(int timeindex)? checkTimeselection,
  }) {
    return checkTimeselection?.call(timeindex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UsersideState state)? checkSlot,
    TResult Function(int index)? checkDateselection,
    TResult Function(int timeindex)? checkTimeselection,
    required TResult orElse(),
  }) {
    if (checkTimeselection != null) {
      return checkTimeselection(timeindex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_checkSlot value) checkSlot,
    required TResult Function(_checkDateselection value) checkDateselection,
    required TResult Function(_checkTimeselection value) checkTimeselection,
  }) {
    return checkTimeselection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_checkSlot value)? checkSlot,
    TResult? Function(_checkDateselection value)? checkDateselection,
    TResult? Function(_checkTimeselection value)? checkTimeselection,
  }) {
    return checkTimeselection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_checkSlot value)? checkSlot,
    TResult Function(_checkDateselection value)? checkDateselection,
    TResult Function(_checkTimeselection value)? checkTimeselection,
    required TResult orElse(),
  }) {
    if (checkTimeselection != null) {
      return checkTimeselection(this);
    }
    return orElse();
  }
}

abstract class _checkTimeselection implements PatientBookingEvent {
  const factory _checkTimeselection({required final int timeindex}) =
      _$_checkTimeselection;

  int get timeindex;
  @JsonKey(ignore: true)
  _$$_checkTimeselectionCopyWith<_$_checkTimeselection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PatientBookingState {
  ApiResponse<List<Result>>? get scheduleList =>
      throw _privateConstructorUsedError;
  int? get selectedDateIndex => throw _privateConstructorUsedError;
  int? get selectedTimeIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PatientBookingStateCopyWith<PatientBookingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientBookingStateCopyWith<$Res> {
  factory $PatientBookingStateCopyWith(
          PatientBookingState value, $Res Function(PatientBookingState) then) =
      _$PatientBookingStateCopyWithImpl<$Res, PatientBookingState>;
  @useResult
  $Res call(
      {ApiResponse<List<Result>>? scheduleList,
      int? selectedDateIndex,
      int? selectedTimeIndex});
}

/// @nodoc
class _$PatientBookingStateCopyWithImpl<$Res, $Val extends PatientBookingState>
    implements $PatientBookingStateCopyWith<$Res> {
  _$PatientBookingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scheduleList = freezed,
    Object? selectedDateIndex = freezed,
    Object? selectedTimeIndex = freezed,
  }) {
    return _then(_value.copyWith(
      scheduleList: freezed == scheduleList
          ? _value.scheduleList
          : scheduleList // ignore: cast_nullable_to_non_nullable
              as ApiResponse<List<Result>>?,
      selectedDateIndex: freezed == selectedDateIndex
          ? _value.selectedDateIndex
          : selectedDateIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      selectedTimeIndex: freezed == selectedTimeIndex
          ? _value.selectedTimeIndex
          : selectedTimeIndex // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_patientbookingStateCopyWith<$Res>
    implements $PatientBookingStateCopyWith<$Res> {
  factory _$$_patientbookingStateCopyWith(_$_patientbookingState value,
          $Res Function(_$_patientbookingState) then) =
      __$$_patientbookingStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ApiResponse<List<Result>>? scheduleList,
      int? selectedDateIndex,
      int? selectedTimeIndex});
}

/// @nodoc
class __$$_patientbookingStateCopyWithImpl<$Res>
    extends _$PatientBookingStateCopyWithImpl<$Res, _$_patientbookingState>
    implements _$$_patientbookingStateCopyWith<$Res> {
  __$$_patientbookingStateCopyWithImpl(_$_patientbookingState _value,
      $Res Function(_$_patientbookingState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scheduleList = freezed,
    Object? selectedDateIndex = freezed,
    Object? selectedTimeIndex = freezed,
  }) {
    return _then(_$_patientbookingState(
      scheduleList: freezed == scheduleList
          ? _value.scheduleList
          : scheduleList // ignore: cast_nullable_to_non_nullable
              as ApiResponse<List<Result>>?,
      selectedDateIndex: freezed == selectedDateIndex
          ? _value.selectedDateIndex
          : selectedDateIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      selectedTimeIndex: freezed == selectedTimeIndex
          ? _value.selectedTimeIndex
          : selectedTimeIndex // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_patientbookingState implements _patientbookingState {
  const _$_patientbookingState(
      {required this.scheduleList,
      required this.selectedDateIndex,
      required this.selectedTimeIndex});

  @override
  final ApiResponse<List<Result>>? scheduleList;
  @override
  final int? selectedDateIndex;
  @override
  final int? selectedTimeIndex;

  @override
  String toString() {
    return 'PatientBookingState(scheduleList: $scheduleList, selectedDateIndex: $selectedDateIndex, selectedTimeIndex: $selectedTimeIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_patientbookingState &&
            (identical(other.scheduleList, scheduleList) ||
                other.scheduleList == scheduleList) &&
            (identical(other.selectedDateIndex, selectedDateIndex) ||
                other.selectedDateIndex == selectedDateIndex) &&
            (identical(other.selectedTimeIndex, selectedTimeIndex) ||
                other.selectedTimeIndex == selectedTimeIndex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, scheduleList, selectedDateIndex, selectedTimeIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_patientbookingStateCopyWith<_$_patientbookingState> get copyWith =>
      __$$_patientbookingStateCopyWithImpl<_$_patientbookingState>(
          this, _$identity);
}

abstract class _patientbookingState implements PatientBookingState {
  const factory _patientbookingState(
      {required final ApiResponse<List<Result>>? scheduleList,
      required final int? selectedDateIndex,
      required final int? selectedTimeIndex}) = _$_patientbookingState;

  @override
  ApiResponse<List<Result>>? get scheduleList;
  @override
  int? get selectedDateIndex;
  @override
  int? get selectedTimeIndex;
  @override
  @JsonKey(ignore: true)
  _$$_patientbookingStateCopyWith<_$_patientbookingState> get copyWith =>
      throw _privateConstructorUsedError;
}
