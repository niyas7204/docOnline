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
          shrinkWrap: true,
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
              Padding(
                padding: const EdgeInsets.all(14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Dr Admin123',
                      style: TextStyle(
                        color: Color.fromARGB(255, 73, 83, 83),
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
                      'MBBS,MD',
                      style: TextStyle(
                        color: Color.fromARGB(255, 130, 136, 151),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    starRating(),
                    const Text(
                      'general Department',
                      style: TextStyle(
                        color: Color.fromARGB(255, 130, 136, 151),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
                      'Hopital Name',
                      style: TextStyle(
                        color: Color.fromARGB(255, 130, 136, 151),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Consultation Fee',
                      style: TextStyle(
                        color: Color.fromARGB(255, 130, 136, 151),
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const Text(
                      '250',
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Appointments Available',
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ])),
            SliverPadding(
              padding: const EdgeInsets.all(10),
              sliver: SliverGrid(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 8,
                    crossAxisSpacing: 8,
                    childAspectRatio: (20 / 8),
                    crossAxisCount: 3),
                delegate: SliverChildListDelegate([
                  timeTable(),
                  timeTable(),
                  timeTable(),
                  timeTable(),
                  timeTable(),
                  timeTable(),
                  timeTable(),
                  timeTable()
                ]),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 60,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
            color: Color.fromARGB(255, 219, 227, 235),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 160,
                height: 45,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 164, 198, 226),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Chat',
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
              ),
              const SizedBox(
                width: 20,
              ),
              SizedBox(
                height: 45,
                width: 160,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 164, 198, 226),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Book Now',
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }

  Container timeTable() {
    return Container(
      height: 40.h,
      width: 100.w,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.blue),
          borderRadius: BorderRadius.circular(12)),
      child: const Center(
        child: Text(
          '26/05/2023',
          style: TextStyle(
            color: Color.fromARGB(255, 0, 0, 0),
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
