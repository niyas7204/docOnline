// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:doc_online/sign_up/infrastructure/email_registration/signup_implimentation.dart'
    as _i8;
import 'package:doc_online/sign_up/infrastructure/otp_verification/verify_email_implimentation.dart'
    as _i7;
import 'package:doc_online/sign_up/sign_up_service.dart' as _i6;
import 'package:doc_online/sign_up/signup_bloc/signup_bloc.dart' as _i9;
import 'package:doc_online/sign_up/verifyotpbloc/verifyotp_bloc.dart' as _i10;
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
    gh.lazySingleton<_i6.OtpService>(() => _i7.OtpImplimentation());
    gh.lazySingleton<_i6.SignUpService>(() => _i8.SignUpImplimentation());
    gh.factory<_i9.SignupBloc>(() => _i9.SignupBloc(gh<_i6.SignUpService>()));
    gh.factory<_i10.VerifyotpBloc>(
        () => _i10.VerifyotpBloc(gh<_i6.OtpService>()));
    return this;
  }
}
