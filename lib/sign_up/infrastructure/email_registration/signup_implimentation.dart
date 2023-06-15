import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:doc_online/domain/model/login.dart';
import 'package:doc_online/domain/failure/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:doc_online/sign_up/get_all_data.dart';
import 'package:doc_online/sign_up/sign_up_service.dart';
import 'package:doc_online/signin/core/url.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: SignUpService)
class SignUpImplimentation implements SignUpService {
  @override
  Future<Either<MainFailure, LogInfo>> getSignUp() async {
    const url = '$baseUrl/user/auth/register';
    print(GetAllData.email);
    final requestBody = {'email': GetAllData.email};
    try {
      final response = await Dio().post(url, data: requestBody);
      log(response.toString());
      if (response.data['err']) {
        return left(const MainFailure.serverFailure());
      } else {
        final data = LogInfo.fromJson(response.data);
        GetAllData.tempToken = data.token;

        return right(data);
      }
    } catch (e) {
      log(e.toString());
      return left(const MainFailure.clientFailure());
    }
  }
}
