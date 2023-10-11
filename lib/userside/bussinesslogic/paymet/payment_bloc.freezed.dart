// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PaymentEvent {
  int? get fee => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? fee) getOrderOption,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? fee)? getOrderOption,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? fee)? getOrderOption,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getOrderOption value) getOrderOption,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getOrderOption value)? getOrderOption,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getOrderOption value)? getOrderOption,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaymentEventCopyWith<PaymentEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentEventCopyWith<$Res> {
  factory $PaymentEventCopyWith(
          PaymentEvent value, $Res Function(PaymentEvent) then) =
      _$PaymentEventCopyWithImpl<$Res, PaymentEvent>;
  @useResult
  $Res call({int? fee});
}

/// @nodoc
class _$PaymentEventCopyWithImpl<$Res, $Val extends PaymentEvent>
    implements $PaymentEventCopyWith<$Res> {
  _$PaymentEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fee = freezed,
  }) {
    return _then(_value.copyWith(
      fee: freezed == fee
          ? _value.fee
          : fee // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$getOrderOptionImplCopyWith<$Res>
    implements $PaymentEventCopyWith<$Res> {
  factory _$$getOrderOptionImplCopyWith(_$getOrderOptionImpl value,
          $Res Function(_$getOrderOptionImpl) then) =
      __$$getOrderOptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? fee});
}

/// @nodoc
class __$$getOrderOptionImplCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res, _$getOrderOptionImpl>
    implements _$$getOrderOptionImplCopyWith<$Res> {
  __$$getOrderOptionImplCopyWithImpl(
      _$getOrderOptionImpl _value, $Res Function(_$getOrderOptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fee = freezed,
  }) {
    return _then(_$getOrderOptionImpl(
      fee: freezed == fee
          ? _value.fee
          : fee // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$getOrderOptionImpl implements _getOrderOption {
  const _$getOrderOptionImpl({required this.fee});

  @override
  final int? fee;

  @override
  String toString() {
    return 'PaymentEvent.getOrderOption(fee: $fee)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$getOrderOptionImpl &&
            (identical(other.fee, fee) || other.fee == fee));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fee);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$getOrderOptionImplCopyWith<_$getOrderOptionImpl> get copyWith =>
      __$$getOrderOptionImplCopyWithImpl<_$getOrderOptionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? fee) getOrderOption,
  }) {
    return getOrderOption(fee);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? fee)? getOrderOption,
  }) {
    return getOrderOption?.call(fee);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? fee)? getOrderOption,
    required TResult orElse(),
  }) {
    if (getOrderOption != null) {
      return getOrderOption(fee);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getOrderOption value) getOrderOption,
  }) {
    return getOrderOption(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getOrderOption value)? getOrderOption,
  }) {
    return getOrderOption?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getOrderOption value)? getOrderOption,
    required TResult orElse(),
  }) {
    if (getOrderOption != null) {
      return getOrderOption(this);
    }
    return orElse();
  }
}

abstract class _getOrderOption implements PaymentEvent {
  const factory _getOrderOption({required final int? fee}) =
      _$getOrderOptionImpl;

  @override
  int? get fee;
  @override
  @JsonKey(ignore: true)
  _$$getOrderOptionImplCopyWith<_$getOrderOptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PaymentState {
  ApiResponse<OrderResponseModel>? get orderResponse =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaymentStateCopyWith<PaymentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentStateCopyWith<$Res> {
  factory $PaymentStateCopyWith(
          PaymentState value, $Res Function(PaymentState) then) =
      _$PaymentStateCopyWithImpl<$Res, PaymentState>;
  @useResult
  $Res call({ApiResponse<OrderResponseModel>? orderResponse});
}

/// @nodoc
class _$PaymentStateCopyWithImpl<$Res, $Val extends PaymentState>
    implements $PaymentStateCopyWith<$Res> {
  _$PaymentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderResponse = freezed,
  }) {
    return _then(_value.copyWith(
      orderResponse: freezed == orderResponse
          ? _value.orderResponse
          : orderResponse // ignore: cast_nullable_to_non_nullable
              as ApiResponse<OrderResponseModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$paymentStateImplCopyWith<$Res>
    implements $PaymentStateCopyWith<$Res> {
  factory _$$paymentStateImplCopyWith(
          _$paymentStateImpl value, $Res Function(_$paymentStateImpl) then) =
      __$$paymentStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ApiResponse<OrderResponseModel>? orderResponse});
}

/// @nodoc
class __$$paymentStateImplCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$paymentStateImpl>
    implements _$$paymentStateImplCopyWith<$Res> {
  __$$paymentStateImplCopyWithImpl(
      _$paymentStateImpl _value, $Res Function(_$paymentStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderResponse = freezed,
  }) {
    return _then(_$paymentStateImpl(
      orderResponse: freezed == orderResponse
          ? _value.orderResponse
          : orderResponse // ignore: cast_nullable_to_non_nullable
              as ApiResponse<OrderResponseModel>?,
    ));
  }
}

/// @nodoc

class _$paymentStateImpl implements paymentState {
  const _$paymentStateImpl({required this.orderResponse});

  @override
  final ApiResponse<OrderResponseModel>? orderResponse;

  @override
  String toString() {
    return 'PaymentState(orderResponse: $orderResponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$paymentStateImpl &&
            (identical(other.orderResponse, orderResponse) ||
                other.orderResponse == orderResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderResponse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$paymentStateImplCopyWith<_$paymentStateImpl> get copyWith =>
      __$$paymentStateImplCopyWithImpl<_$paymentStateImpl>(this, _$identity);
}

abstract class paymentState implements PaymentState {
  const factory paymentState(
          {required final ApiResponse<OrderResponseModel>? orderResponse}) =
      _$paymentStateImpl;

  @override
  ApiResponse<OrderResponseModel>? get orderResponse;
  @override
  @JsonKey(ignore: true)
  _$$paymentStateImplCopyWith<_$paymentStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
