import 'package:doc_online/account_auth/signin/core/widgets.dart';
import 'package:doc_online/user/core/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorDetails extends StatelessWidget {
  const DoctorDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300.h,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/image/doctor1.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
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
          ])),
        ],
      )),
    );
  }
}
