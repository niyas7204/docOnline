import 'package:doc_online/authentication/user/businesslogic/forgotpassword/forgotpassword_bloc.dart';
import 'package:doc_online/authentication/user/businesslogic/login/login_bloc.dart';
import 'package:doc_online/authentication/user/businesslogic/signup/signup_bloc.dart';
import 'package:doc_online/authentication/user/businesslogic/verifyotpbloc/verifyotp_bloc.dart';
import 'package:doc_online/authentication/user/data/data_provider/forgotpassword_implimentation.dart';
import 'package:doc_online/authentication/user/data/data_provider/login_implimentation.dart';
import 'package:doc_online/authentication/user/data/data_provider/signup_implimentation.dart';
import 'package:doc_online/authentication/user/data/data_provider/verify_email_implimentation.dart';
import 'package:doc_online/authentication/user/presentaion/log_in.dart';
import 'package:doc_online/core/helpers/enum.dart';
import 'package:doc_online/doctorside/bloc/bloc/emr_bloc.dart';
import 'package:doc_online/doctorside/bloc/doctor/docter_view/bloc/bookings_bloc.dart';
import 'package:doc_online/doctorside/bloc/doctor/log_in/doctor_bloc.dart';
import 'package:doc_online/doctorside/bloc/profile/doctorprofileresponse_bloc.dart';
import 'package:doc_online/doctorside/data/data_providers/doctor_side/doctor_repo_implimentation.dart';
import 'package:doc_online/doctorside/data/data_providers/doctorvie_implimentation.dart';
import 'package:doc_online/doctorside/data/data_providers/emr_impl.dart';
import 'package:doc_online/doctorside/presentation/home.dart';

import 'package:doc_online/userside/bussinesslogic/booking/booking_bloc.dart';
import 'package:doc_online/userside/bussinesslogic/hospital/hospital_bloc.dart';
import 'package:doc_online/userside/bussinesslogic/paymet/payment_bloc.dart';
import 'package:doc_online/userside/bussinesslogic/userprofile/user_profile_bloc.dart';
import 'package:doc_online/userside/data/dataprovider/booking_impl.dart';
import 'package:doc_online/userside/data/dataprovider/search_impl.dart';
import 'package:doc_online/userside/data/dataprovider/userprofile_implimentation.dart';
import 'package:doc_online/userside/presentation/screens/home.dart';

import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'userside/bussinesslogic/departments/departments_bloc.dart';
import 'userside/bussinesslogic/doctor/userside_bloc.dart';
import 'userside/bussinesslogic/search/search_bloc.dart';
import 'userside/data/dataprovider/department_implimentation.dart';
import 'userside/data/dataprovider/hospital_implimentation.dart';
import 'userside/data/dataprovider/userside_impimentation.dart';

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
            create: (context) =>
                ForgotpasswordBloc(ForgotPasswordImplimentation()),
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
            create: (context) => DepartmentsBloc(DepartmentImplimentation()),
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
              create: (context) =>
                  UserProfileBloc(UserProfileImplimentation())),
          BlocProvider(
              create: (context) => HospitalBloc(HospitalImplimentation())),
        ],
        child: MaterialApp(
            theme: ThemeData(
                useMaterial3: true,
                primaryColor: const Color.fromARGB(255, 3, 43, 77)),
            debugShowCheckedModeBanner: false,
            home: FutureBuilder<LoginSelection>(
                future: isLoggedIn(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const CircularProgressIndicator();
                  } else {
                    if (snapshot.hasData) {
                      if (snapshot.data == LoginSelection.user) {
                        return const HomeSc();
                      } else if (snapshot.data == LoginSelection.doctor) {
                        return const DoctorHomeSc();
                      } else {
                        return const Login();
                      }
                    } else {
                      return const Login();
                    }
                  }
                })));
  }

  Future<LoginSelection> isLoggedIn() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool userLogin = prefs.getBool('isLoggedIn') ?? false;
    bool doctorLogin = prefs.getBool('DocterLogin') ?? false;
    LoginSelection logInPerson = userLogin
        ? LoginSelection.user
        : doctorLogin
            ? LoginSelection.doctor
            : LoginSelection.none;

    return logInPerson;
  }
}
