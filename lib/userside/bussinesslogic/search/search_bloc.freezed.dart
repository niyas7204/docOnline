// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() doctorSearch,
    required TResult Function() hospitalSearch,
    required TResult Function(List<Doctors> doctorList, String query)
        onDoctorSearch,
    required TResult Function(List<HospitalDeatails> hospitalList, String query)
        onHospitalSearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? doctorSearch,
    TResult? Function()? hospitalSearch,
    TResult? Function(List<Doctors> doctorList, String query)? onDoctorSearch,
    TResult? Function(List<HospitalDeatails> hospitalList, String query)?
        onHospitalSearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? doctorSearch,
    TResult Function()? hospitalSearch,
    TResult Function(List<Doctors> doctorList, String query)? onDoctorSearch,
    TResult Function(List<HospitalDeatails> hospitalList, String query)?
        onHospitalSearch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DoctorSearch value) doctorSearch,
    required TResult Function(HospitalSearch value) hospitalSearch,
    required TResult Function(OnDoctorSearch value) onDoctorSearch,
    required TResult Function(OnHospitalSearch value) onHospitalSearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DoctorSearch value)? doctorSearch,
    TResult? Function(HospitalSearch value)? hospitalSearch,
    TResult? Function(OnDoctorSearch value)? onDoctorSearch,
    TResult? Function(OnHospitalSearch value)? onHospitalSearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DoctorSearch value)? doctorSearch,
    TResult Function(HospitalSearch value)? hospitalSearch,
    TResult Function(OnDoctorSearch value)? onDoctorSearch,
    TResult Function(OnHospitalSearch value)? onHospitalSearch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchEventCopyWith<$Res> {
  factory $SearchEventCopyWith(
          SearchEvent value, $Res Function(SearchEvent) then) =
      _$SearchEventCopyWithImpl<$Res, SearchEvent>;
}

/// @nodoc
class _$SearchEventCopyWithImpl<$Res, $Val extends SearchEvent>
    implements $SearchEventCopyWith<$Res> {
  _$SearchEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DoctorSearchImplCopyWith<$Res> {
  factory _$$DoctorSearchImplCopyWith(
          _$DoctorSearchImpl value, $Res Function(_$DoctorSearchImpl) then) =
      __$$DoctorSearchImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DoctorSearchImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$DoctorSearchImpl>
    implements _$$DoctorSearchImplCopyWith<$Res> {
  __$$DoctorSearchImplCopyWithImpl(
      _$DoctorSearchImpl _value, $Res Function(_$DoctorSearchImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DoctorSearchImpl implements DoctorSearch {
  const _$DoctorSearchImpl();

  @override
  String toString() {
    return 'SearchEvent.doctorSearch()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DoctorSearchImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() doctorSearch,
    required TResult Function() hospitalSearch,
    required TResult Function(List<Doctors> doctorList, String query)
        onDoctorSearch,
    required TResult Function(List<HospitalDeatails> hospitalList, String query)
        onHospitalSearch,
  }) {
    return doctorSearch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? doctorSearch,
    TResult? Function()? hospitalSearch,
    TResult? Function(List<Doctors> doctorList, String query)? onDoctorSearch,
    TResult? Function(List<HospitalDeatails> hospitalList, String query)?
        onHospitalSearch,
  }) {
    return doctorSearch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? doctorSearch,
    TResult Function()? hospitalSearch,
    TResult Function(List<Doctors> doctorList, String query)? onDoctorSearch,
    TResult Function(List<HospitalDeatails> hospitalList, String query)?
        onHospitalSearch,
    required TResult orElse(),
  }) {
    if (doctorSearch != null) {
      return doctorSearch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DoctorSearch value) doctorSearch,
    required TResult Function(HospitalSearch value) hospitalSearch,
    required TResult Function(OnDoctorSearch value) onDoctorSearch,
    required TResult Function(OnHospitalSearch value) onHospitalSearch,
  }) {
    return doctorSearch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DoctorSearch value)? doctorSearch,
    TResult? Function(HospitalSearch value)? hospitalSearch,
    TResult? Function(OnDoctorSearch value)? onDoctorSearch,
    TResult? Function(OnHospitalSearch value)? onHospitalSearch,
  }) {
    return doctorSearch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DoctorSearch value)? doctorSearch,
    TResult Function(HospitalSearch value)? hospitalSearch,
    TResult Function(OnDoctorSearch value)? onDoctorSearch,
    TResult Function(OnHospitalSearch value)? onHospitalSearch,
    required TResult orElse(),
  }) {
    if (doctorSearch != null) {
      return doctorSearch(this);
    }
    return orElse();
  }
}

abstract class DoctorSearch implements SearchEvent {
  const factory DoctorSearch() = _$DoctorSearchImpl;
}

/// @nodoc
abstract class _$$HospitalSearchImplCopyWith<$Res> {
  factory _$$HospitalSearchImplCopyWith(_$HospitalSearchImpl value,
          $Res Function(_$HospitalSearchImpl) then) =
      __$$HospitalSearchImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HospitalSearchImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$HospitalSearchImpl>
    implements _$$HospitalSearchImplCopyWith<$Res> {
  __$$HospitalSearchImplCopyWithImpl(
      _$HospitalSearchImpl _value, $Res Function(_$HospitalSearchImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HospitalSearchImpl implements HospitalSearch {
  const _$HospitalSearchImpl();

  @override
  String toString() {
    return 'SearchEvent.hospitalSearch()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HospitalSearchImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() doctorSearch,
    required TResult Function() hospitalSearch,
    required TResult Function(List<Doctors> doctorList, String query)
        onDoctorSearch,
    required TResult Function(List<HospitalDeatails> hospitalList, String query)
        onHospitalSearch,
  }) {
    return hospitalSearch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? doctorSearch,
    TResult? Function()? hospitalSearch,
    TResult? Function(List<Doctors> doctorList, String query)? onDoctorSearch,
    TResult? Function(List<HospitalDeatails> hospitalList, String query)?
        onHospitalSearch,
  }) {
    return hospitalSearch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? doctorSearch,
    TResult Function()? hospitalSearch,
    TResult Function(List<Doctors> doctorList, String query)? onDoctorSearch,
    TResult Function(List<HospitalDeatails> hospitalList, String query)?
        onHospitalSearch,
    required TResult orElse(),
  }) {
    if (hospitalSearch != null) {
      return hospitalSearch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DoctorSearch value) doctorSearch,
    required TResult Function(HospitalSearch value) hospitalSearch,
    required TResult Function(OnDoctorSearch value) onDoctorSearch,
    required TResult Function(OnHospitalSearch value) onHospitalSearch,
  }) {
    return hospitalSearch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DoctorSearch value)? doctorSearch,
    TResult? Function(HospitalSearch value)? hospitalSearch,
    TResult? Function(OnDoctorSearch value)? onDoctorSearch,
    TResult? Function(OnHospitalSearch value)? onHospitalSearch,
  }) {
    return hospitalSearch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DoctorSearch value)? doctorSearch,
    TResult Function(HospitalSearch value)? hospitalSearch,
    TResult Function(OnDoctorSearch value)? onDoctorSearch,
    TResult Function(OnHospitalSearch value)? onHospitalSearch,
    required TResult orElse(),
  }) {
    if (hospitalSearch != null) {
      return hospitalSearch(this);
    }
    return orElse();
  }
}

abstract class HospitalSearch implements SearchEvent {
  const factory HospitalSearch() = _$HospitalSearchImpl;
}

/// @nodoc
abstract class _$$OnDoctorSearchImplCopyWith<$Res> {
  factory _$$OnDoctorSearchImplCopyWith(_$OnDoctorSearchImpl value,
          $Res Function(_$OnDoctorSearchImpl) then) =
      __$$OnDoctorSearchImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Doctors> doctorList, String query});
}

/// @nodoc
class __$$OnDoctorSearchImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$OnDoctorSearchImpl>
    implements _$$OnDoctorSearchImplCopyWith<$Res> {
  __$$OnDoctorSearchImplCopyWithImpl(
      _$OnDoctorSearchImpl _value, $Res Function(_$OnDoctorSearchImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? doctorList = null,
    Object? query = null,
  }) {
    return _then(_$OnDoctorSearchImpl(
      doctorList: null == doctorList
          ? _value._doctorList
          : doctorList // ignore: cast_nullable_to_non_nullable
              as List<Doctors>,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnDoctorSearchImpl implements OnDoctorSearch {
  const _$OnDoctorSearchImpl(
      {required final List<Doctors> doctorList, required this.query})
      : _doctorList = doctorList;

  final List<Doctors> _doctorList;
  @override
  List<Doctors> get doctorList {
    if (_doctorList is EqualUnmodifiableListView) return _doctorList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_doctorList);
  }

  @override
  final String query;

  @override
  String toString() {
    return 'SearchEvent.onDoctorSearch(doctorList: $doctorList, query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnDoctorSearchImpl &&
            const DeepCollectionEquality()
                .equals(other._doctorList, _doctorList) &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_doctorList), query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnDoctorSearchImplCopyWith<_$OnDoctorSearchImpl> get copyWith =>
      __$$OnDoctorSearchImplCopyWithImpl<_$OnDoctorSearchImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() doctorSearch,
    required TResult Function() hospitalSearch,
    required TResult Function(List<Doctors> doctorList, String query)
        onDoctorSearch,
    required TResult Function(List<HospitalDeatails> hospitalList, String query)
        onHospitalSearch,
  }) {
    return onDoctorSearch(doctorList, query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? doctorSearch,
    TResult? Function()? hospitalSearch,
    TResult? Function(List<Doctors> doctorList, String query)? onDoctorSearch,
    TResult? Function(List<HospitalDeatails> hospitalList, String query)?
        onHospitalSearch,
  }) {
    return onDoctorSearch?.call(doctorList, query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? doctorSearch,
    TResult Function()? hospitalSearch,
    TResult Function(List<Doctors> doctorList, String query)? onDoctorSearch,
    TResult Function(List<HospitalDeatails> hospitalList, String query)?
        onHospitalSearch,
    required TResult orElse(),
  }) {
    if (onDoctorSearch != null) {
      return onDoctorSearch(doctorList, query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DoctorSearch value) doctorSearch,
    required TResult Function(HospitalSearch value) hospitalSearch,
    required TResult Function(OnDoctorSearch value) onDoctorSearch,
    required TResult Function(OnHospitalSearch value) onHospitalSearch,
  }) {
    return onDoctorSearch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DoctorSearch value)? doctorSearch,
    TResult? Function(HospitalSearch value)? hospitalSearch,
    TResult? Function(OnDoctorSearch value)? onDoctorSearch,
    TResult? Function(OnHospitalSearch value)? onHospitalSearch,
  }) {
    return onDoctorSearch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DoctorSearch value)? doctorSearch,
    TResult Function(HospitalSearch value)? hospitalSearch,
    TResult Function(OnDoctorSearch value)? onDoctorSearch,
    TResult Function(OnHospitalSearch value)? onHospitalSearch,
    required TResult orElse(),
  }) {
    if (onDoctorSearch != null) {
      return onDoctorSearch(this);
    }
    return orElse();
  }
}

abstract class OnDoctorSearch implements SearchEvent {
  const factory OnDoctorSearch(
      {required final List<Doctors> doctorList,
      required final String query}) = _$OnDoctorSearchImpl;

  List<Doctors> get doctorList;
  String get query;
  @JsonKey(ignore: true)
  _$$OnDoctorSearchImplCopyWith<_$OnDoctorSearchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnHospitalSearchImplCopyWith<$Res> {
  factory _$$OnHospitalSearchImplCopyWith(_$OnHospitalSearchImpl value,
          $Res Function(_$OnHospitalSearchImpl) then) =
      __$$OnHospitalSearchImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<HospitalDeatails> hospitalList, String query});
}

/// @nodoc
class __$$OnHospitalSearchImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$OnHospitalSearchImpl>
    implements _$$OnHospitalSearchImplCopyWith<$Res> {
  __$$OnHospitalSearchImplCopyWithImpl(_$OnHospitalSearchImpl _value,
      $Res Function(_$OnHospitalSearchImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hospitalList = null,
    Object? query = null,
  }) {
    return _then(_$OnHospitalSearchImpl(
      hospitalList: null == hospitalList
          ? _value._hospitalList
          : hospitalList // ignore: cast_nullable_to_non_nullable
              as List<HospitalDeatails>,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnHospitalSearchImpl implements OnHospitalSearch {
  const _$OnHospitalSearchImpl(
      {required final List<HospitalDeatails> hospitalList, required this.query})
      : _hospitalList = hospitalList;

  final List<HospitalDeatails> _hospitalList;
  @override
  List<HospitalDeatails> get hospitalList {
    if (_hospitalList is EqualUnmodifiableListView) return _hospitalList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hospitalList);
  }

  @override
  final String query;

  @override
  String toString() {
    return 'SearchEvent.onHospitalSearch(hospitalList: $hospitalList, query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnHospitalSearchImpl &&
            const DeepCollectionEquality()
                .equals(other._hospitalList, _hospitalList) &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_hospitalList), query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnHospitalSearchImplCopyWith<_$OnHospitalSearchImpl> get copyWith =>
      __$$OnHospitalSearchImplCopyWithImpl<_$OnHospitalSearchImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() doctorSearch,
    required TResult Function() hospitalSearch,
    required TResult Function(List<Doctors> doctorList, String query)
        onDoctorSearch,
    required TResult Function(List<HospitalDeatails> hospitalList, String query)
        onHospitalSearch,
  }) {
    return onHospitalSearch(hospitalList, query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? doctorSearch,
    TResult? Function()? hospitalSearch,
    TResult? Function(List<Doctors> doctorList, String query)? onDoctorSearch,
    TResult? Function(List<HospitalDeatails> hospitalList, String query)?
        onHospitalSearch,
  }) {
    return onHospitalSearch?.call(hospitalList, query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? doctorSearch,
    TResult Function()? hospitalSearch,
    TResult Function(List<Doctors> doctorList, String query)? onDoctorSearch,
    TResult Function(List<HospitalDeatails> hospitalList, String query)?
        onHospitalSearch,
    required TResult orElse(),
  }) {
    if (onHospitalSearch != null) {
      return onHospitalSearch(hospitalList, query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DoctorSearch value) doctorSearch,
    required TResult Function(HospitalSearch value) hospitalSearch,
    required TResult Function(OnDoctorSearch value) onDoctorSearch,
    required TResult Function(OnHospitalSearch value) onHospitalSearch,
  }) {
    return onHospitalSearch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DoctorSearch value)? doctorSearch,
    TResult? Function(HospitalSearch value)? hospitalSearch,
    TResult? Function(OnDoctorSearch value)? onDoctorSearch,
    TResult? Function(OnHospitalSearch value)? onHospitalSearch,
  }) {
    return onHospitalSearch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DoctorSearch value)? doctorSearch,
    TResult Function(HospitalSearch value)? hospitalSearch,
    TResult Function(OnDoctorSearch value)? onDoctorSearch,
    TResult Function(OnHospitalSearch value)? onHospitalSearch,
    required TResult orElse(),
  }) {
    if (onHospitalSearch != null) {
      return onHospitalSearch(this);
    }
    return orElse();
  }
}

abstract class OnHospitalSearch implements SearchEvent {
  const factory OnHospitalSearch(
      {required final List<HospitalDeatails> hospitalList,
      required final String query}) = _$OnHospitalSearchImpl;

  List<HospitalDeatails> get hospitalList;
  String get query;
  @JsonKey(ignore: true)
  _$$OnHospitalSearchImplCopyWith<_$OnHospitalSearchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchState {
  SearchSelection get searchSelection => throw _privateConstructorUsedError;
  ApiResponse<DoctorByDepartment>? get doctorsList =>
      throw _privateConstructorUsedError;
  ApiResponse<HospitalData>? get hospitalList =>
      throw _privateConstructorUsedError;
  bool get isSearch => throw _privateConstructorUsedError;
  ApiResponse<List<Doctors>>? get doctorResult =>
      throw _privateConstructorUsedError;
  ApiResponse<List<HospitalDeatails>>? get hospitalResult =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchStateCopyWith<SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res, SearchState>;
  @useResult
  $Res call(
      {SearchSelection searchSelection,
      ApiResponse<DoctorByDepartment>? doctorsList,
      ApiResponse<HospitalData>? hospitalList,
      bool isSearch,
      ApiResponse<List<Doctors>>? doctorResult,
      ApiResponse<List<HospitalDeatails>>? hospitalResult});
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res, $Val extends SearchState>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchSelection = null,
    Object? doctorsList = freezed,
    Object? hospitalList = freezed,
    Object? isSearch = null,
    Object? doctorResult = freezed,
    Object? hospitalResult = freezed,
  }) {
    return _then(_value.copyWith(
      searchSelection: null == searchSelection
          ? _value.searchSelection
          : searchSelection // ignore: cast_nullable_to_non_nullable
              as SearchSelection,
      doctorsList: freezed == doctorsList
          ? _value.doctorsList
          : doctorsList // ignore: cast_nullable_to_non_nullable
              as ApiResponse<DoctorByDepartment>?,
      hospitalList: freezed == hospitalList
          ? _value.hospitalList
          : hospitalList // ignore: cast_nullable_to_non_nullable
              as ApiResponse<HospitalData>?,
      isSearch: null == isSearch
          ? _value.isSearch
          : isSearch // ignore: cast_nullable_to_non_nullable
              as bool,
      doctorResult: freezed == doctorResult
          ? _value.doctorResult
          : doctorResult // ignore: cast_nullable_to_non_nullable
              as ApiResponse<List<Doctors>>?,
      hospitalResult: freezed == hospitalResult
          ? _value.hospitalResult
          : hospitalResult // ignore: cast_nullable_to_non_nullable
              as ApiResponse<List<HospitalDeatails>>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$searchStateImplCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory _$$searchStateImplCopyWith(
          _$searchStateImpl value, $Res Function(_$searchStateImpl) then) =
      __$$searchStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SearchSelection searchSelection,
      ApiResponse<DoctorByDepartment>? doctorsList,
      ApiResponse<HospitalData>? hospitalList,
      bool isSearch,
      ApiResponse<List<Doctors>>? doctorResult,
      ApiResponse<List<HospitalDeatails>>? hospitalResult});
}

/// @nodoc
class __$$searchStateImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$searchStateImpl>
    implements _$$searchStateImplCopyWith<$Res> {
  __$$searchStateImplCopyWithImpl(
      _$searchStateImpl _value, $Res Function(_$searchStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchSelection = null,
    Object? doctorsList = freezed,
    Object? hospitalList = freezed,
    Object? isSearch = null,
    Object? doctorResult = freezed,
    Object? hospitalResult = freezed,
  }) {
    return _then(_$searchStateImpl(
      searchSelection: null == searchSelection
          ? _value.searchSelection
          : searchSelection // ignore: cast_nullable_to_non_nullable
              as SearchSelection,
      doctorsList: freezed == doctorsList
          ? _value.doctorsList
          : doctorsList // ignore: cast_nullable_to_non_nullable
              as ApiResponse<DoctorByDepartment>?,
      hospitalList: freezed == hospitalList
          ? _value.hospitalList
          : hospitalList // ignore: cast_nullable_to_non_nullable
              as ApiResponse<HospitalData>?,
      isSearch: null == isSearch
          ? _value.isSearch
          : isSearch // ignore: cast_nullable_to_non_nullable
              as bool,
      doctorResult: freezed == doctorResult
          ? _value.doctorResult
          : doctorResult // ignore: cast_nullable_to_non_nullable
              as ApiResponse<List<Doctors>>?,
      hospitalResult: freezed == hospitalResult
          ? _value.hospitalResult
          : hospitalResult // ignore: cast_nullable_to_non_nullable
              as ApiResponse<List<HospitalDeatails>>?,
    ));
  }
}

/// @nodoc

class _$searchStateImpl implements searchState {
  _$searchStateImpl(
      {required this.searchSelection,
      required this.doctorsList,
      required this.hospitalList,
      required this.isSearch,
      required this.doctorResult,
      required this.hospitalResult});

  @override
  final SearchSelection searchSelection;
  @override
  final ApiResponse<DoctorByDepartment>? doctorsList;
  @override
  final ApiResponse<HospitalData>? hospitalList;
  @override
  final bool isSearch;
  @override
  final ApiResponse<List<Doctors>>? doctorResult;
  @override
  final ApiResponse<List<HospitalDeatails>>? hospitalResult;

  @override
  String toString() {
    return 'SearchState(searchSelection: $searchSelection, doctorsList: $doctorsList, hospitalList: $hospitalList, isSearch: $isSearch, doctorResult: $doctorResult, hospitalResult: $hospitalResult)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$searchStateImpl &&
            (identical(other.searchSelection, searchSelection) ||
                other.searchSelection == searchSelection) &&
            (identical(other.doctorsList, doctorsList) ||
                other.doctorsList == doctorsList) &&
            (identical(other.hospitalList, hospitalList) ||
                other.hospitalList == hospitalList) &&
            (identical(other.isSearch, isSearch) ||
                other.isSearch == isSearch) &&
            (identical(other.doctorResult, doctorResult) ||
                other.doctorResult == doctorResult) &&
            (identical(other.hospitalResult, hospitalResult) ||
                other.hospitalResult == hospitalResult));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchSelection, doctorsList,
      hospitalList, isSearch, doctorResult, hospitalResult);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$searchStateImplCopyWith<_$searchStateImpl> get copyWith =>
      __$$searchStateImplCopyWithImpl<_$searchStateImpl>(this, _$identity);
}

abstract class searchState implements SearchState {
  factory searchState(
          {required final SearchSelection searchSelection,
          required final ApiResponse<DoctorByDepartment>? doctorsList,
          required final ApiResponse<HospitalData>? hospitalList,
          required final bool isSearch,
          required final ApiResponse<List<Doctors>>? doctorResult,
          required final ApiResponse<List<HospitalDeatails>>? hospitalResult}) =
      _$searchStateImpl;

  @override
  SearchSelection get searchSelection;
  @override
  ApiResponse<DoctorByDepartment>? get doctorsList;
  @override
  ApiResponse<HospitalData>? get hospitalList;
  @override
  bool get isSearch;
  @override
  ApiResponse<List<Doctors>>? get doctorResult;
  @override
  ApiResponse<List<HospitalDeatails>>? get hospitalResult;
  @override
  @JsonKey(ignore: true)
  _$$searchStateImplCopyWith<_$searchStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
