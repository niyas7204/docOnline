import 'dart:io';

import 'package:dio/dio.dart';
import 'package:doc_online/doctorside/presentation/core/url.dart';
import 'package:doc_online/userside/data/model/userprofile/userprofile_model.dart';
import 'package:doc_online/core/failure/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:doc_online/userside/data/repository/data_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserProfileImplimentation implements UserProfileService {
  Dio dio = Dio();
  @override
  Future<Either<MainFailure, UserProfileModel>> getUserprofile() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Cookie cookie = Cookie('token', prefs.getString('token')!);
    const url = '$baseUrl/user/auth/check';
    try {
      final response = await Dio().get(url,
          options:
              Options(headers: {'cookie': '${cookie.name}=${cookie.value}'}));

      if (response.statusCode == 200) {
        final data = userProfileModelFromJson(response.data);

        return right(data);
      } else {
        return left(const MainFailure.serverFailure());
      }
    } catch (e) {
      return left(const MainFailure.clientFailure());
    }
  }
}
