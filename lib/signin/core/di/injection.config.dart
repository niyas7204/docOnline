// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:doc_online/signin/application/bloc/login_bloc.dart' as _i5;
import 'package:doc_online/signin/infrastructure/login_implimentation.dart'
    as _i4;
import 'package:doc_online/signin/login_service.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.LogInService>(() => _i4.LogInImplimentation());
    gh.factory<_i5.LoginBloc>(() => _i5.LoginBloc(gh<_i3.LogInService>()));
    return this;
  }
}
