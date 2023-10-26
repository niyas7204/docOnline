import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:doc_online/doctorside/presentation/core/url.dart';
import 'package:doc_online/userside/data/model/department/department_model.dart';
import 'package:doc_online/core/failure/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:doc_online/userside/data/repository/data_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DepartmentImplimentation implements DepartmentService {
  //get departments
  @override
  Future<Either<MainFailure, DepartmentsInfo>> getDepartmentdata() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    Cookie cookie = Cookie('token', prefs.getString('token')!);

    const url = '$baseUrl/user/departments';
    try {
      final response = await Dio().get(url,
          options:
              Options(headers: {'cookie': '${cookie.name}=${cookie.value}'}));

      if (!response.data['err']) {
        final data = departmentsInfoFromJson(response.data);

        return right(data);
      } else {
        return left(const MainFailure.serverFailure());
      }
    } catch (e) {
      log('error d$e');
      return left(const MainFailure.clientFailure());
    }
  }
}
