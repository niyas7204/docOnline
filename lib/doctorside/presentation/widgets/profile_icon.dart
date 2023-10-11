import 'package:doc_online/doctorside/presentation/doctorprofile.dart';
import 'package:flutter/material.dart';

class ProfileIcon extends StatelessWidget {
  const ProfileIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
    onTap: () {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const DoctorProfile(),
      ));
    },
    child: const CircleAvatar(
      backgroundColor: Color.fromRGBO(217, 217, 217, 1),
      radius: 20,
      child: Center(
        child: Icon(
          Icons.person_2_sharp,
          color: Color.fromRGBO(56, 86, 59, 1),
        ),
      ),
    ),
  );
  }
}