import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:doc_online/account_auth/data/model/login.dart';
import 'package:dartz/dartz.dart';
import 'package:doc_online/account_auth/data/repository/sign_up_service.dart';
import 'package:doc_online/core/authentication/email_auth.dart';
import 'package:doc_online/core/failure/failure.dart';
import 'package:doc_online/doctorside/presentation/core/url.dart';

class ForgotPasswordImplimentation implements ForgotPasswordService {
  @override
  Future<Either<MainFailure, LogInfo>> changePassword(
      {required String email}) async {
    const url = '$baseUrl/user/auth/forgot';
    final requestBody = {
      'email': email,
    };

    try {
      final respone = await Dio().post(
        url,
        data: requestBody,
      );

      if (respone.statusCode == 200 || respone.statusCode == 201) {
        if (respone.data['err'] == false) {
          final data = LogInfo.fromJson(respone.data);
          await updateshredPreference(respone.data['token'], true, false);

          return right(data);
        } else {
          final data = LogInfo.fromJson(respone.data);

          return right(data);
        }
      } else {
        return left(const MainFailure.serverFailure());
      }
    } catch (e) {
      log("error $e");
      return left(const MainFailure.clientFailure());
    }
  }
}
