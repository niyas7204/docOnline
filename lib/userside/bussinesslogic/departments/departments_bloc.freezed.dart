// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'departments_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DepartmentsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getDepartmentdata,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getDepartmentdata,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getDepartmentdata,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getDepartmentdata value) getDepartmentdata,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getDepartmentdata value)? getDepartmentdata,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getDepartmentdata value)? getDepartmentdata,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DepartmentsEventCopyWith<$Res> {
  factory $DepartmentsEventCopyWith(
          DepartmentsEvent value, $Res Function(DepartmentsEvent) then) =
      _$DepartmentsEventCopyWithImpl<$Res, DepartmentsEvent>;
}

/// @nodoc
class _$DepartmentsEventCopyWithImpl<$Res, $Val extends DepartmentsEvent>
    implements $DepartmentsEventCopyWith<$Res> {
  _$DepartmentsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$getDepartmentdataImplCopyWith<$Res> {
  factory _$$getDepartmentdataImplCopyWith(_$getDepartmentdataImpl value,
          $Res Function(_$getDepartmentdataImpl) then) =
      __$$getDepartmentdataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$getDepartmentdataImplCopyWithImpl<$Res>
    extends _$DepartmentsEventCopyWithImpl<$Res, _$getDepartmentdataImpl>
    implements _$$getDepartmentdataImplCopyWith<$Res> {
  __$$getDepartmentdataImplCopyWithImpl(_$getDepartmentdataImpl _value,
      $Res Function(_$getDepartmentdataImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$getDepartmentdataImpl implements _getDepartmentdata {
  const _$getDepartmentdataImpl();

  @override
  String toString() {
    return 'DepartmentsEvent.getDepartmentdata()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$getDepartmentdataImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getDepartmentdata,
  }) {
    return getDepartmentdata();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getDepartmentdata,
  }) {
    return getDepartmentdata?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getDepartmentdata,
    required TResult orElse(),
  }) {
    if (getDepartmentdata != null) {
      return getDepartmentdata();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getDepartmentdata value) getDepartmentdata,
  }) {
    return getDepartmentdata(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getDepartmentdata value)? getDepartmentdata,
  }) {
    return getDepartmentdata?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getDepartmentdata value)? getDepartmentdata,
    required TResult orElse(),
  }) {
    if (getDepartmentdata != null) {
      return getDepartmentdata(this);
    }
    return orElse();
  }
}

abstract class _getDepartmentdata implements DepartmentsEvent {
  const factory _getDepartmentdata() = _$getDepartmentdataImpl;
}

/// @nodoc
mixin _$DepartmentsState {
  ApiResponse<DepartmentsInfo> get departmentData =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DepartmentsStateCopyWith<DepartmentsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DepartmentsStateCopyWith<$Res> {
  factory $DepartmentsStateCopyWith(
          DepartmentsState value, $Res Function(DepartmentsState) then) =
      _$DepartmentsStateCopyWithImpl<$Res, DepartmentsState>;
  @useResult
  $Res call({ApiResponse<DepartmentsInfo> departmentData});
}

/// @nodoc
class _$DepartmentsStateCopyWithImpl<$Res, $Val extends DepartmentsState>
    implements $DepartmentsStateCopyWith<$Res> {
  _$DepartmentsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? departmentData = null,
  }) {
    return _then(_value.copyWith(
      departmentData: null == departmentData
          ? _value.departmentData
          : departmentData // ignore: cast_nullable_to_non_nullable
              as ApiResponse<DepartmentsInfo>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DepartmentsStateImplCopyWith<$Res>
    implements $DepartmentsStateCopyWith<$Res> {
  factory _$$DepartmentsStateImplCopyWith(_$DepartmentsStateImpl value,
          $Res Function(_$DepartmentsStateImpl) then) =
      __$$DepartmentsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ApiResponse<DepartmentsInfo> departmentData});
}

/// @nodoc
class __$$DepartmentsStateImplCopyWithImpl<$Res>
    extends _$DepartmentsStateCopyWithImpl<$Res, _$DepartmentsStateImpl>
    implements _$$DepartmentsStateImplCopyWith<$Res> {
  __$$DepartmentsStateImplCopyWithImpl(_$DepartmentsStateImpl _value,
      $Res Function(_$DepartmentsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? departmentData = null,
  }) {
    return _then(_$DepartmentsStateImpl(
      departmentData: null == departmentData
          ? _value.departmentData
          : departmentData // ignore: cast_nullable_to_non_nullable
              as ApiResponse<DepartmentsInfo>,
    ));
  }
}

/// @nodoc

class _$DepartmentsStateImpl implements _DepartmentsState {
  const _$DepartmentsStateImpl({required this.departmentData});

  @override
  final ApiResponse<DepartmentsInfo> departmentData;

  @override
  String toString() {
    return 'DepartmentsState(departmentData: $departmentData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DepartmentsStateImpl &&
            (identical(other.departmentData, departmentData) ||
                other.departmentData == departmentData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, departmentData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DepartmentsStateImplCopyWith<_$DepartmentsStateImpl> get copyWith =>
      __$$DepartmentsStateImplCopyWithImpl<_$DepartmentsStateImpl>(
          this, _$identity);
}

abstract class _DepartmentsState implements DepartmentsState {
  const factory _DepartmentsState(
          {required final ApiResponse<DepartmentsInfo> departmentData}) =
      _$DepartmentsStateImpl;

  @override
  ApiResponse<DepartmentsInfo> get departmentData;
  @override
  @JsonKey(ignore: true)
  _$$DepartmentsStateImplCopyWith<_$DepartmentsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
