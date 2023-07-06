import 'package:doc_online/account_auth/sign_up/signup_bloc/signup_bloc.dart';
import 'package:doc_online/account_auth/sign_up/verifyotpbloc/verifyotp_bloc.dart';
import 'package:doc_online/account_auth/signin/application/bloc/login_bloc.dart';
import 'package:doc_online/repository/di/injection.dart';
import 'package:doc_online/account_auth/signin/presentation/login/screens/log_in.dart';

import 'package:doc_online/bloc/user_side/userside_bloc.dart';

import 'package:doc_online/ui/user/presentation/home.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
        BlocProvider(
          create: (context) => getIt<UsersideBloc>(),
        )
      ],
      child: ScreenUtilInit(
        builder: (BuildContext context, Widget? child) {
          return MaterialApp(
              debugShowCheckedModeBanner: false,
              builder: (context, child) {
                return ScrollConfiguration(
                  behavior: MyBehavior(),
                  child: child!,
                );
              },
              home: FutureBuilder<bool>(
                  future: isLoggedIn(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const CircularProgressIndicator();
                    } else {
                      if (snapshot.hasData && snapshot.data!) {
                        return const HomeSc();
                      } else {
                        return const Login();
                      }
                    }
                  }));
        },
      ),
    );
  }

  Future<bool> isLoggedIn() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool('isLoggedIn') ?? false;
  }
}

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
    BuildContext context,
    Widget child,
    ScrollableDetails details,
  ) {
    return child;
  }
}
