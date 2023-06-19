import 'package:doc_online/account_auth/signin/core/widgets.dart';
import 'package:doc_online/user/core/widgets.dart';
import 'package:flutter/material.dart';

class ByDepartment extends StatelessWidget {
  const ByDepartment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              const Text(
                'Doctors',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              space1(),
              doctersCard(),
              space1(),
              doctersCard(),
              space1(),
              doctersCard(),
              space1(),
              doctersCard(),
              space1(),
              doctersCard(),
            ],
          ),
        ),
      ),
    );
  }
}
