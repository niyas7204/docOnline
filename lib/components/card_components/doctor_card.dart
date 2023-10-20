import 'package:doc_online/userside/data/model/doctors/doctors.dart';
import 'package:doc_online/userside/presentation/screens/doctor_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart' as prefix;

class DoctorCard extends StatelessWidget {
  final List<Doctors> doctors;
  final int index;
  const DoctorCard({super.key, required this.doctors, required this.index});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => DoctorDetails(doctorId: doctors[index].id!)));
      },
      child: Container(
        height: 120,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: const Color.fromARGB(255, 101, 131, 146)),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15), topRight: Radius.circular(15)),
              child: prefix.Image.asset(
                'assets/image/doctor.png',
                fit: BoxFit.cover,
                width: 100,
                height: 80,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    doctors[index].name![0].toUpperCase() +
                        doctors[index].name!.substring(1),
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    doctors[index].hospitalId!.name!.toUpperCase(),
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    doctors[index].qualification!.toUpperCase(),
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    doctors[index].hospitalId!.name!,
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
