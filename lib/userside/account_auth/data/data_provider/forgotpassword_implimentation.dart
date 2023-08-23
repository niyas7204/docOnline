import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';

import 'package:dartz/dartz.dart';

import 'package:doc_online/core/failure/failure.dart';
import 'package:doc_online/core/get_all_data.dart';
import 'package:doc_online/doctorside/presentation/core/url.dart';
import 'package:doc_online/userside/account_auth/data/model/login.dart';
import 'package:doc_online/userside/account_auth/data/repository/sign_up_service.dart';

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
          GetAllData.tempToken = data.token;

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

  @override
  Future<Either<MainFailure, bool>> verifyOtp({required String otp}) async {
    const url = '$baseUrl/user/auth/forgot/verify';
    final requestBody = {
      'otp': otp,
    };
    String token = GetAllData.tempToken!;
    GetAllData.otp = otp;
    Cookie cookie = Cookie('tempToken', token);
    try {
      final respone = await Dio().post(url,
          data: requestBody,
          options:
              Options(headers: {'cookie': "${cookie.name}=${cookie.value}"}));

      if (respone.statusCode == 200 || respone.statusCode == 201) {
        if (respone.data['err'] == false) {
          return right(respone.data['err']);
        } else {
          return right(respone.data['err']);
        }
      } else {
        return left(const MainFailure.serverFailure());
      }
    } catch (e) {
      log("error $e");
      return left(const MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, bool>> registerPassword(
      {required String password}) async {
    const url = '$baseUrl/user/auth/forgot/reset';
    final requestBody = {
      'email': GetAllData.email,
      'otp': GetAllData.otp,
      'password': password,
    };
    String token = GetAllData.tempToken!;

    Cookie cookie = Cookie('tempToken', token);
    try {
      final respone = await Dio().post(url,
          data: requestBody,
          options:
              Options(headers: {'cookie': "${cookie.name}=${cookie.value}"}));

      if (respone.statusCode == 200 || respone.statusCode == 201) {
        if (respone.data['err'] == false) {
          return right(respone.data['err']);
        } else {
          return right(respone.data['err']);
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
