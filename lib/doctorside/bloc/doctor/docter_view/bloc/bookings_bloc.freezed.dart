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
    required TResult Function() getBookings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getBookings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getBookings,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getBookings value) getBookings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getBookings value)? getBookings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getBookings value)? getBookings,
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
abstract class _$$_getBookingsCopyWith<$Res> {
  factory _$$_getBookingsCopyWith(
          _$_getBookings value, $Res Function(_$_getBookings) then) =
      __$$_getBookingsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_getBookingsCopyWithImpl<$Res>
    extends _$BookingsEventCopyWithImpl<$Res, _$_getBookings>
    implements _$$_getBookingsCopyWith<$Res> {
  __$$_getBookingsCopyWithImpl(
      _$_getBookings _value, $Res Function(_$_getBookings) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_getBookings implements _getBookings {
  const _$_getBookings();

  @override
  String toString() {
    return 'BookingsEvent.getBookings()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_getBookings);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getBookings,
  }) {
    return getBookings();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getBookings,
  }) {
    return getBookings?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getBookings,
    required TResult orElse(),
  }) {
    if (getBookings != null) {
      return getBookings();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getBookings value) getBookings,
  }) {
    return getBookings(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getBookings value)? getBookings,
  }) {
    return getBookings?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getBookings value)? getBookings,
    required TResult orElse(),
  }) {
    if (getBookings != null) {
      return getBookings(this);
    }
    return orElse();
  }
}

abstract class _getBookings implements BookingsEvent {
  const factory _getBookings() = _$_getBookings;
}

/// @nodoc
mixin _$BookingsState {
  ApiResponse<BookingsModel> get bookings => throw _privateConstructorUsedError;

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
  $Res call({ApiResponse<BookingsModel> bookings});
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
  }) {
    return _then(_value.copyWith(
      bookings: null == bookings
          ? _value.bookings
          : bookings // ignore: cast_nullable_to_non_nullable
              as ApiResponse<BookingsModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$bookingsStateCopyWith<$Res>
    implements $BookingsStateCopyWith<$Res> {
  factory _$$bookingsStateCopyWith(
          _$bookingsState value, $Res Function(_$bookingsState) then) =
      __$$bookingsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ApiResponse<BookingsModel> bookings});
}

/// @nodoc
class __$$bookingsStateCopyWithImpl<$Res>
    extends _$BookingsStateCopyWithImpl<$Res, _$bookingsState>
    implements _$$bookingsStateCopyWith<$Res> {
  __$$bookingsStateCopyWithImpl(
      _$bookingsState _value, $Res Function(_$bookingsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookings = null,
  }) {
    return _then(_$bookingsState(
      bookings: null == bookings
          ? _value.bookings
          : bookings // ignore: cast_nullable_to_non_nullable
              as ApiResponse<BookingsModel>,
    ));
  }
}

/// @nodoc

class _$bookingsState implements bookingsState {
  const _$bookingsState({required this.bookings});

  @override
  final ApiResponse<BookingsModel> bookings;

  @override
  String toString() {
    return 'BookingsState(bookings: $bookings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$bookingsState &&
            (identical(other.bookings, bookings) ||
                other.bookings == bookings));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bookings);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$bookingsStateCopyWith<_$bookingsState> get copyWith =>
      __$$bookingsStateCopyWithImpl<_$bookingsState>(this, _$identity);
}

abstract class bookingsState implements BookingsState {
  const factory bookingsState(
      {required final ApiResponse<BookingsModel> bookings}) = _$bookingsState;

  @override
  ApiResponse<BookingsModel> get bookings;
  @override
  @JsonKey(ignore: true)
  _$$bookingsStateCopyWith<_$bookingsState> get copyWith =>
      throw _privateConstructorUsedError;
}
