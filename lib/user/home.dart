import 'package:doc_online/signin/core/logo.dart';
import 'package:doc_online/signin/core/widgets.dart';
import 'package:doc_online/user/core/widgets.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeSc extends StatelessWidget {
  const HomeSc({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 250.h,
                width: 360.w,
                child: Stack(
                  children: [
                    Positioned(
                      top: 0,
                      child: SizedBox(
                        child: Image.asset(
                          'assets/image/home_bn.jpg',
                          fit: BoxFit.cover,
                          width: 360.w,
                          height: 250.h,
                        ),
                      ),
                    ),
                    Positioned(left: 16, top: 10, child: logo()),
                    const Positioned(
                      top: 60,
                      right: 20,
                      child: Text(
                        'We Care About \nYour Health',
                        style: TextStyle(
                            fontSize: 30,
                            color: Color.fromARGB(150, 95, 95, 95),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const Positioned(
                        top: 150,
                        right: 50,
                        child: Text(
                          'specialized docters all\n over the country',
                          style: TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(150, 95, 95, 95),
                              fontWeight: FontWeight.w500),
                        )),
                    Positioned(
                        top: 220,
                        right: 50,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.grey,
                            ),
                            onPressed: () {},
                            child: const Text(
                              'Appointment',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: baseColor,
                                  fontWeight: FontWeight.w600),
                            )))
                  ],
                ),
              ),
              space1(),
              const Padding(
                padding: EdgeInsets.only(left: 16),
                child: Text(
                  'Search by department',
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                ),
              ),
              space1(),
              SizedBox(
                height: 170,
                child: Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) => departmentCard('genaral'),
                  ),
                ),
              ),
              space1(),
              Container(
                color: Color.fromARGB(162, 176, 197, 193),
                child: IntrinsicHeight(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 8),
                          child: Text(
                            'Top Hospital',
                            style: TextStyle(
                                fontSize: 23, fontWeight: FontWeight.bold),
                          ),
                        ),
                        space1(),
                        Expanded(
                            child: Wrap(
                          children: [
                            hospitalCard(),
                            hospitalCard(),
                            hospitalCard(),
                            hospitalCard(),
                          ],
                        ))
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
