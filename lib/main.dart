import 'package:doc_online/account_auth/businesslogic/login/login_bloc.dart';
import 'package:doc_online/account_auth/businesslogic/sign_up/verifyotpbloc/verifyotp_bloc.dart';
import 'package:doc_online/account_auth/businesslogic/signup_bloc/signup_bloc.dart';
import 'package:doc_online/account_auth/data/data_provider/signup_implimentation.dart';
import 'package:doc_online/doctorside/bloc/bloc/emr_bloc.dart';
import 'package:doc_online/doctorside/bloc/doctor/docter_view/bloc/bookings_bloc.dart';
import 'package:doc_online/doctorside/bloc/doctor/log_in/doctor_bloc.dart';
import 'package:doc_online/doctorside/bloc/profile/doctorprofileresponse_bloc.dart';
import 'package:doc_online/doctorside/data/data_providers/doctor_side/doctor_repo_implimentation.dart';
import 'package:doc_online/doctorside/data/data_providers/doctorvie_implimentation.dart';
import 'package:doc_online/doctorside/data/data_providers/emr_impl.dart';
import 'package:doc_online/doctorside/presentation/home.dart';
import 'package:doc_online/userside/businessLogic/bloc/user_profile_bloc.dart';
import 'package:doc_online/userside/businessLogic/paymet/payment_bloc.dart';
import 'package:doc_online/userside/data/dataprovider/booking_impl.dart';
import 'package:doc_online/userside/data/dataprovider/search_impl.dart';
import 'package:doc_online/userside/data/dataprovider/userprofile_implimentation.dart';
import 'package:doc_online/userside/presentation/screens/home.dart';
import 'package:doc_online/userside/businessLogic/userside_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'account_auth/data/data_provider/verify_email_implimentation.dart';

import 'account_auth/data/data_provider/login_implimentation.dart';
import 'account_auth/presentaion/log_in.dart';

import 'userside/businessLogic/booking/booking_bloc.dart';
import 'userside/businessLogic/search/search_bloc.dart';
import 'userside/data/dataprovider/hospital_impimentation.dart';

Future<void> main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LoginBloc(LogInImplimentation()),
        ),
        BlocProvider(
          create: (context) => SignupBloc(SignUpImplimentation()),
        ),
        BlocProvider(
          create: (context) => VerifyotpBloc(OtpImplimentation()),
        ),
        BlocProvider(
          create: (context) => UsersideBloc(UserSideImplimentation()),
        ),
        BlocProvider(
          create: (context) => DoctorBloc(DoctorRepoImplimentation()),
        ),
        BlocProvider(
          create: (context) => BookingsBloc(DoctorViewImplimentation()),
        ),
        BlocProvider(
          create: (context) =>
              DoctorprofileresponseBloc(DoctorViewImplimentation()),
        ),
        BlocProvider(
          create: (context) => SearchBloc(SearchImplimentation()),
        ),
        BlocProvider(
          create: (context) => PatientBookingBloc(BookingImplimentation()),
        ),
        BlocProvider(
          create: (context) => PaymentBloc(BookingImplimentation()),
        ),
        BlocProvider(create: (context) => EmrBloc(EmrImplimentation())),
        BlocProvider(
            create: (context) => UserProfileBloc(UserProfileImplimentation())),
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
              home: FutureBuilder<String>(
                  future: isLoggedIn(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const CircularProgressIndicator();
                    } else {
                      if (snapshot.hasData) {
                        if (snapshot.data == 'user') {
                          return const HomeSc();
                        } else if (snapshot.data == 'Doctor') {
                          return const DoctorHomeSc();
                        } else {
                          return const Login();
                        }
                      } else {
                        return const Login();
                      }
                    }
                  }));
        },
      ),
    );
  }

  Future<String> isLoggedIn() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.getBool('isLoggedIn') ?? false;
    prefs.getBool('DocterLogin') ?? false;
    String logInPerson = prefs.getBool('isLoggedIn')!
        ? 'user'
        : prefs.getBool('DocterLogin')!
            ? 'Doctor'
            : ' noLogin';

    return logInPerson;
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
