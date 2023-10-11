// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bookings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BookingsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTodaysBookings,
    required TResult Function(AppointmentSelection selection) changeSelection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTodaysBookings,
    TResult? Function(AppointmentSelection selection)? changeSelection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTodaysBookings,
    TResult Function(AppointmentSelection selection)? changeSelection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getTodaysBookings value) getTodaysBookings,
    required TResult Function(_changeSelection value) changeSelection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getTodaysBookings value)? getTodaysBookings,
    TResult? Function(_changeSelection value)? changeSelection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getTodaysBookings value)? getTodaysBookings,
    TResult Function(_changeSelection value)? changeSelection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingsEventCopyWith<$Res> {
  factory $BookingsEventCopyWith(
          BookingsEvent value, $Res Function(BookingsEvent) then) =
      _$BookingsEventCopyWithImpl<$Res, BookingsEvent>;
}

/// @nodoc
class _$BookingsEventCopyWithImpl<$Res, $Val extends BookingsEvent>
    implements $BookingsEventCopyWith<$Res> {
  _$BookingsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$getTodaysBookingsImplCopyWith<$Res> {
  factory _$$getTodaysBookingsImplCopyWith(_$getTodaysBookingsImpl value,
          $Res Function(_$getTodaysBookingsImpl) then) =
      __$$getTodaysBookingsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$getTodaysBookingsImplCopyWithImpl<$Res>
    extends _$BookingsEventCopyWithImpl<$Res, _$getTodaysBookingsImpl>
    implements _$$getTodaysBookingsImplCopyWith<$Res> {
  __$$getTodaysBookingsImplCopyWithImpl(_$getTodaysBookingsImpl _value,
      $Res Function(_$getTodaysBookingsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$getTodaysBookingsImpl implements _getTodaysBookings {
  const _$getTodaysBookingsImpl();

  @override
  String toString() {
    return 'BookingsEvent.getTodaysBookings()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$getTodaysBookingsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTodaysBookings,
    required TResult Function(AppointmentSelection selection) changeSelection,
  }) {
    return getTodaysBookings();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTodaysBookings,
    TResult? Function(AppointmentSelection selection)? changeSelection,
  }) {
    return getTodaysBookings?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTodaysBookings,
    TResult Function(AppointmentSelection selection)? changeSelection,
    required TResult orElse(),
  }) {
    if (getTodaysBookings != null) {
      return getTodaysBookings();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getTodaysBookings value) getTodaysBookings,
    required TResult Function(_changeSelection value) changeSelection,
  }) {
    return getTodaysBookings(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getTodaysBookings value)? getTodaysBookings,
    TResult? Function(_changeSelection value)? changeSelection,
  }) {
    return getTodaysBookings?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getTodaysBookings value)? getTodaysBookings,
    TResult Function(_changeSelection value)? changeSelection,
    required TResult orElse(),
  }) {
    if (getTodaysBookings != null) {
      return getTodaysBookings(this);
    }
    return orElse();
  }
}

abstract class _getTodaysBookings implements BookingsEvent {
  const factory _getTodaysBookings() = _$getTodaysBookingsImpl;
}

/// @nodoc
abstract class _$$changeSelectionImplCopyWith<$Res> {
  factory _$$changeSelectionImplCopyWith(_$changeSelectionImpl value,
          $Res Function(_$changeSelectionImpl) then) =
      __$$changeSelectionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AppointmentSelection selection});
}

/// @nodoc
class __$$changeSelectionImplCopyWithImpl<$Res>
    extends _$BookingsEventCopyWithImpl<$Res, _$changeSelectionImpl>
    implements _$$changeSelectionImplCopyWith<$Res> {
  __$$changeSelectionImplCopyWithImpl(
      _$changeSelectionImpl _value, $Res Function(_$changeSelectionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selection = null,
  }) {
    return _then(_$changeSelectionImpl(
      selection: null == selection
          ? _value.selection
          : selection // ignore: cast_nullable_to_non_nullable
              as AppointmentSelection,
    ));
  }
}

/// @nodoc

class _$changeSelectionImpl implements _changeSelection {
  const _$changeSelectionImpl({required this.selection});

  @override
  final AppointmentSelection selection;

  @override
  String toString() {
    return 'BookingsEvent.changeSelection(selection: $selection)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$changeSelectionImpl &&
            (identical(other.selection, selection) ||
                other.selection == selection));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selection);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$changeSelectionImplCopyWith<_$changeSelectionImpl> get copyWith =>
      __$$changeSelectionImplCopyWithImpl<_$changeSelectionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTodaysBookings,
    required TResult Function(AppointmentSelection selection) changeSelection,
  }) {
    return changeSelection(selection);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTodaysBookings,
    TResult? Function(AppointmentSelection selection)? changeSelection,
  }) {
    return changeSelection?.call(selection);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTodaysBookings,
    TResult Function(AppointmentSelection selection)? changeSelection,
    required TResult orElse(),
  }) {
    if (changeSelection != null) {
      return changeSelection(selection);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getTodaysBookings value) getTodaysBookings,
    required TResult Function(_changeSelection value) changeSelection,
  }) {
    return changeSelection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getTodaysBookings value)? getTodaysBookings,
    TResult? Function(_changeSelection value)? changeSelection,
  }) {
    return changeSelection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getTodaysBookings value)? getTodaysBookings,
    TResult Function(_changeSelection value)? changeSelection,
    required TResult orElse(),
  }) {
    if (changeSelection != null) {
      return changeSelection(this);
    }
    return orElse();
  }
}

abstract class _changeSelection implements BookingsEvent {
  const factory _changeSelection(
      {required final AppointmentSelection selection}) = _$changeSelectionImpl;

  AppointmentSelection get selection;
  @JsonKey(ignore: true)
  _$$changeSelectionImplCopyWith<_$changeSelectionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BookingsState {
  ApiResponse<BookingsModel> get bookings => throw _privateConstructorUsedError;
  ApiResponse<BookingsModel> get todaysbookings =>
      throw _privateConstructorUsedError;
  AppointmentSelection get selection => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BookingsStateCopyWith<BookingsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingsStateCopyWith<$Res> {
  factory $BookingsStateCopyWith(
          BookingsState value, $Res Function(BookingsState) then) =
      _$BookingsStateCopyWithImpl<$Res, BookingsState>;
  @useResult
  $Res call(
      {ApiResponse<BookingsModel> bookings,
      ApiResponse<BookingsModel> todaysbookings,
      AppointmentSelection selection});
}

/// @nodoc
class _$BookingsStateCopyWithImpl<$Res, $Val extends BookingsState>
    implements $BookingsStateCopyWith<$Res> {
  _$BookingsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookings = null,
    Object? todaysbookings = null,
    Object? selection = null,
  }) {
    return _then(_value.copyWith(
      bookings: null == bookings
          ? _value.bookings
          : bookings // ignore: cast_nullable_to_non_nullable
              as ApiResponse<BookingsModel>,
      todaysbookings: null == todaysbookings
          ? _value.todaysbookings
          : todaysbookings // ignore: cast_nullable_to_non_nullable
              as ApiResponse<BookingsModel>,
      selection: null == selection
          ? _value.selection
          : selection // ignore: cast_nullable_to_non_nullable
              as AppointmentSelection,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$bookingsStateImplCopyWith<$Res>
    implements $BookingsStateCopyWith<$Res> {
  factory _$$bookingsStateImplCopyWith(
          _$bookingsStateImpl value, $Res Function(_$bookingsStateImpl) then) =
      __$$bookingsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ApiResponse<BookingsModel> bookings,
      ApiResponse<BookingsModel> todaysbookings,
      AppointmentSelection selection});
}

/// @nodoc
class __$$bookingsStateImplCopyWithImpl<$Res>
    extends _$BookingsStateCopyWithImpl<$Res, _$bookingsStateImpl>
    implements _$$bookingsStateImplCopyWith<$Res> {
  __$$bookingsStateImplCopyWithImpl(
      _$bookingsStateImpl _value, $Res Function(_$bookingsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookings = null,
    Object? todaysbookings = null,
    Object? selection = null,
  }) {
    return _then(_$bookingsStateImpl(
      bookings: null == bookings
          ? _value.bookings
          : bookings // ignore: cast_nullable_to_non_nullable
              as ApiResponse<BookingsModel>,
      todaysbookings: null == todaysbookings
          ? _value.todaysbookings
          : todaysbookings // ignore: cast_nullable_to_non_nullable
              as ApiResponse<BookingsModel>,
      selection: null == selection
          ? _value.selection
          : selection // ignore: cast_nullable_to_non_nullable
              as AppointmentSelection,
    ));
  }
}

/// @nodoc

class _$bookingsStateImpl implements bookingsState {
  const _$bookingsStateImpl(
      {required this.bookings,
      required this.todaysbookings,
      required this.selection});

  @override
  final ApiResponse<BookingsModel> bookings;
  @override
  final ApiResponse<BookingsModel> todaysbookings;
  @override
  final AppointmentSelection selection;

  @override
  String toString() {
    return 'BookingsState(bookings: $bookings, todaysbookings: $todaysbookings, selection: $selection)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$bookingsStateImpl &&
            (identical(other.bookings, bookings) ||
                other.bookings == bookings) &&
            (identical(other.todaysbookings, todaysbookings) ||
                other.todaysbookings == todaysbookings) &&
            (identical(other.selection, selection) ||
                other.selection == selection));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, bookings, todaysbookings, selection);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$bookingsStateImplCopyWith<_$bookingsStateImpl> get copyWith =>
      __$$bookingsStateImplCopyWithImpl<_$bookingsStateImpl>(this, _$identity);
}

abstract class bookingsState implements BookingsState {
  const factory bookingsState(
      {required final ApiResponse<BookingsModel> bookings,
      required final ApiResponse<BookingsModel> todaysbookings,
      required final AppointmentSelection selection}) = _$bookingsStateImpl;

  @override
  ApiResponse<BookingsModel> get bookings;
  @override
  ApiResponse<BookingsModel> get todaysbookings;
  @override
  AppointmentSelection get selection;
  @override
  @JsonKey(ignore: true)
  _$$bookingsStateImplCopyWith<_$bookingsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
