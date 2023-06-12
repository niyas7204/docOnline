import 'package:dio/dio.dart';
import 'package:doc_online/core/url.dart';

userLog() async {
  try {
    String url = '$baseUrl/user/auth/login';
    Map<String, dynamic> requestBody = {
      'email': 'kpfasil314@gmail.com',
      'password': '123'
    };

    Response response = await Dio().post(url, data: requestBody);
    print(response);
  } catch (e) {
    print('error$e');
  }
}
