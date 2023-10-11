import 'package:doc_online/userside/presentation/screens/doctor_by_department.dart';
import 'package:flutter/material.dart';
class DepartmentCard extends StatelessWidget {
 final String dpName;
 final String id;
  const DepartmentCard({super.key, required this.dpName, required this.id,});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
    onTap: () async {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => ByDepartment(id: id)));
    },
    child: Card(
      child: SizedBox(
        width: 105,
        height: 230,
        child: Column(
          children: [
            Image.asset(
                'assets/image/stethoscope-icon-2316460_1280.png'),
            Center(
              child: SizedBox(
                width: 100,
                child: Text(
                  dpName[0].toUpperCase() + dpName.substring(1),
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
  }
}
