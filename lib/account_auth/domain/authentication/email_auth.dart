import 'package:email_validator/email_validator.dart';
import 'package:shared_preferences/shared_preferences.dart';

bool isValidEmail(String email) {
  return EmailValidator.validate(email);
}

void updateshredPreference(String token, bool log) async {
  SharedPreferences sPref = await SharedPreferences.getInstance();
  sPref.setString('token', token);
  sPref.setBool('isLoggedIn', log);
}
