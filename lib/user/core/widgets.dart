import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

departmentCard(String dpName) {
  return Card(
    child: SizedBox(
      width: 105.w,
      height: 200.h,
      child: Column(
        children: [
          Image.asset('assets/image/stethoscope-icon-2316460_1280.png'),
          Center(
            child: SizedBox(
              width: 100.w,
              child: Text(
                dpName,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

hospitalCard() {
  return Card(
    child: SizedBox(
      height: 200.h,
      width: 166.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            child: Image.asset(
              'assets/image/images.jpeg',
              fit: BoxFit.cover,
              width: 166.w,
              height: 120.h,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'hospital name',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
                Row(
                  children: const [
                    Icon(Icons.star),
                    Icon(Icons.star),
                    Icon(Icons.star),
                    Icon(Icons.star),
                    Icon(Icons.star)
                  ],
                ),
                const Text(
                  'hospital adress',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
