import 'package:shared_preferences/shared_preferences.dart';

Future<void> updateshredPreference(
  String token,
  bool log,
  bool dLog,
) async {
  SharedPreferences sPref = await SharedPreferences.getInstance();

  sPref.setString('token', token);
  sPref.setBool('DocterLogin', dLog);

  sPref.setBool('isLoggedIn', log);
}
