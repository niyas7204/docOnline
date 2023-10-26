import 'package:doc_online/userside/bussinesslogic/doctor/userside_bloc.dart';

checkTime(UsersideState state) async {
  var date = DateTime.now();
  for (int i = 0; i < 7; i++) {
    date = date.add(const Duration(days: 1));
  }
}
