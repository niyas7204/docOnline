import 'package:doc_online/ui/core/logo.dart';
import 'package:doc_online/ui/core/widgets.dart';
import 'package:flutter/material.dart';

class DocterHomeSc extends StatelessWidget {
  const DocterHomeSc({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(132, 164, 135, 1),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [logo(), profile()],
            ),
            space1(),
            space1(),
            heading('Todays Appointments')
          ],
        ),
      )),
    );
  }
}
