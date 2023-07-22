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
abstract class _$$DoctorSearchCopyWith<$Res> {
  factory _$$DoctorSearchCopyWith(
          _$DoctorSearch value, $Res Function(_$DoctorSearch) then) =
      __$$DoctorSearchCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DoctorSearchCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$DoctorSearch>
    implements _$$DoctorSearchCopyWith<$Res> {
  __$$DoctorSearchCopyWithImpl(
      _$DoctorSearch _value, $Res Function(_$DoctorSearch) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DoctorSearch implements DoctorSearch {
  const _$DoctorSearch();

  @override
  String toString() {
    return 'SearchEvent.doctorSearch()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DoctorSearch);
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
  const factory DoctorSearch() = _$DoctorSearch;
}

/// @nodoc
abstract class _$$HospitalSearchCopyWith<$Res> {
  factory _$$HospitalSearchCopyWith(
          _$HospitalSearch value, $Res Function(_$HospitalSearch) then) =
      __$$HospitalSearchCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HospitalSearchCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$HospitalSearch>
    implements _$$HospitalSearchCopyWith<$Res> {
  __$$HospitalSearchCopyWithImpl(
      _$HospitalSearch _value, $Res Function(_$HospitalSearch) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HospitalSearch implements HospitalSearch {
  const _$HospitalSearch();

  @override
  String toString() {
    return 'SearchEvent.hospitalSearch()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HospitalSearch);
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
  const factory HospitalSearch() = _$HospitalSearch;
}

/// @nodoc
abstract class _$$OnDoctorSearchCopyWith<$Res> {
  factory _$$OnDoctorSearchCopyWith(
          _$OnDoctorSearch value, $Res Function(_$OnDoctorSearch) then) =
      __$$OnDoctorSearchCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Doctors> doctorList, String query});
}

/// @nodoc
class __$$OnDoctorSearchCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$OnDoctorSearch>
    implements _$$OnDoctorSearchCopyWith<$Res> {
  __$$OnDoctorSearchCopyWithImpl(
      _$OnDoctorSearch _value, $Res Function(_$OnDoctorSearch) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? doctorList = null,
    Object? query = null,
  }) {
    return _then(_$OnDoctorSearch(
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

class _$OnDoctorSearch implements OnDoctorSearch {
  const _$OnDoctorSearch(
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
            other is _$OnDoctorSearch &&
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
  _$$OnDoctorSearchCopyWith<_$OnDoctorSearch> get copyWith =>
      __$$OnDoctorSearchCopyWithImpl<_$OnDoctorSearch>(this, _$identity);

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
      required final String query}) = _$OnDoctorSearch;

  List<Doctors> get doctorList;
  String get query;
  @JsonKey(ignore: true)
  _$$OnDoctorSearchCopyWith<_$OnDoctorSearch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnHospitalSearchCopyWith<$Res> {
  factory _$$OnHospitalSearchCopyWith(
          _$OnHospitalSearch value, $Res Function(_$OnHospitalSearch) then) =
      __$$OnHospitalSearchCopyWithImpl<$Res>;
  @useResult
  $Res call({List<HospitalDeatails> hospitalList, String query});
}

/// @nodoc
class __$$OnHospitalSearchCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$OnHospitalSearch>
    implements _$$OnHospitalSearchCopyWith<$Res> {
  __$$OnHospitalSearchCopyWithImpl(
      _$OnHospitalSearch _value, $Res Function(_$OnHospitalSearch) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hospitalList = null,
    Object? query = null,
  }) {
    return _then(_$OnHospitalSearch(
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

class _$OnHospitalSearch implements OnHospitalSearch {
  const _$OnHospitalSearch(
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
            other is _$OnHospitalSearch &&
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
  _$$OnHospitalSearchCopyWith<_$OnHospitalSearch> get copyWith =>
      __$$OnHospitalSearchCopyWithImpl<_$OnHospitalSearch>(this, _$identity);

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
      required final String query}) = _$OnHospitalSearch;

  List<HospitalDeatails> get hospitalList;
  String get query;
  @JsonKey(ignore: true)
  _$$OnHospitalSearchCopyWith<_$OnHospitalSearch> get copyWith =>
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
abstract class _$$searchStateCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory _$$searchStateCopyWith(
          _$searchState value, $Res Function(_$searchState) then) =
      __$$searchStateCopyWithImpl<$Res>;
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
class __$$searchStateCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$searchState>
    implements _$$searchStateCopyWith<$Res> {
  __$$searchStateCopyWithImpl(
      _$searchState _value, $Res Function(_$searchState) _then)
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
    return _then(_$searchState(
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

class _$searchState implements searchState {
  _$searchState(
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
            other is _$searchState &&
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
  _$$searchStateCopyWith<_$searchState> get copyWith =>
      __$$searchStateCopyWithImpl<_$searchState>(this, _$identity);
}

abstract class searchState implements SearchState {
  factory searchState(
          {required final SearchSelection searchSelection,
          required final ApiResponse<DoctorByDepartment>? doctorsList,
          required final ApiResponse<HospitalData>? hospitalList,
          required final bool isSearch,
          required final ApiResponse<List<Doctors>>? doctorResult,
          required final ApiResponse<List<HospitalDeatails>>? hospitalResult}) =
      _$searchState;

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
  _$$searchStateCopyWith<_$searchState> get copyWith =>
      throw _privateConstructorUsedError;
}
