import 'dart:developer';

import 'package:dio/dio.dart';

import 'package:doc_online/account_auth/domain/failure/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:doc_online/account_auth/domain/model/signup_model.dart';
import 'package:doc_online/account_auth/sign_up/get_all_data.dart';
import 'package:doc_online/account_auth/sign_up/sign_up_service.dart';
import 'package:doc_online/doctorside/presentation/core/url.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: SignUpService)
class SignUpImplimentation implements SignUpService {
  @override
  Future<Either<MainFailure, SignupInfo>> getSignUp() async {
    const url = '$baseUrl/user/auth/register';

    final requestBody = {'email': GetAllData.email};

    try {
      final response = await Dio().post(url, data: requestBody);
      log(response.toString());
      if (response.data['err']) {
        return left(const MainFailure.serverFailure());
      } else {
        final data = SignupInfo.fromJson(response.data);
        GetAllData.tempToken = data.token;
        log(data.toString());
        return right(data);
      }
    } catch (e) {
      log(e.toString());
      return left(const MainFailure.clientFailure());
    }
  }
}
