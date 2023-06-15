import 'package:doc_online/sign_up/signup_bloc/signup_bloc.dart';
import 'package:doc_online/sign_up/verifyotpbloc/verifyotp_bloc.dart';
import 'package:doc_online/signin/application/bloc/login_bloc.dart';
import 'package:doc_online/signin/core/di/injection.dart';
import 'package:doc_online/signin/presentation/login/screens/log_in.dart';
import 'package:doc_online/signin/presentation/login/screens/sign_up.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<LoginBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<SignupBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<VerifyotpBloc>(),
        ),
      ],
      child: ScreenUtilInit(
        builder: (BuildContext context, Widget? child) {
          return const MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Login(),
          );
        },
      ),
    );
  }
}
