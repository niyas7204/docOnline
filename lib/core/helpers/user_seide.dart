import 'dart:developer';
import 'package:doc_online/userside/bussinesslogic/doctor/userside_bloc.dart';
import 'package:doc_online/userside/data/model/schedule/doctor_schedule.dart';
import 'package:tuple/tuple.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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

Tuple2<List, List<List<Mon?>>> scheduleList(UsersideState state) {
  List<List<Mon>> schedule = [
    state.schedule.data!.schedule!.sun!,
    state.schedule.data!.schedule!.mon!,
    state.schedule.data!.schedule!.tue!,
    state.schedule.data!.schedule!.wed!,
    state.schedule.data!.schedule!.thu!,
    state.schedule.data!.schedule!.fri!,
    state.schedule.data!.schedule!.sat!,
  ];
  List days = [
    'sunday',
    'monday',
    'tuesday',
    'wedndesday',
    'thusrsday',
    'friday',
    'saterday'
  ];
  return Tuple2(days, schedule);
}
