import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../bloc/user_side/userside_bloc.dart';

apiCall(String id, BuildContext context) {
  return WidgetsBinding.instance.addPostFrameCallback((_) {
    log('hello');
    final userBloc = BlocProvider.of<UsersideBloc>(context);
    userBloc.add(UsersideEvent.getDoctor(
      dId: id,
    ));
    userBloc.add(UsersideEvent.getDoctorSchedule(dId: id));
  });
}
