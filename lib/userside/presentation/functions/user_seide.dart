import 'dart:developer';

import 'package:doc_online/userside/businessLogic/userside_bloc.dart';
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
    state.schedule!.schedule!.sun!,
    state.schedule!.schedule!.mon!,
    state.schedule!.schedule!.tue!,
    state.schedule!.schedule!.wed!,
    state.schedule!.schedule!.thu!,
    state.schedule!.schedule!.fri!,
    state.schedule!.schedule!.sat!,
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
