import 'package:flutter/material.dart';
import 'package:doc_online/presentation/login/screens/log_in.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:doc_online/core/constants.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Login(),
        );
      },
    );
  }
}
