import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const baseColor = Color.fromRGBO(5, 13, 124, 1);
header1(String th) => Text(
      th,
      style: const TextStyle(
          fontSize: 35, fontWeight: FontWeight.w600, color: baseColor),
    );
space1() => const SizedBox(
      height: 10,
    );
textField(String hint, TextEditingController txtCntrlr) {
  return Container(
      decoration: BoxDecoration(
          border: Border.all(width: 1), borderRadius: BorderRadius.circular(7)),
      height: 40.h,
      width: 300.w,
      child: TextFormField(
        controller: txtCntrlr,
        textAlign: TextAlign.left,
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.only(left: 20), hintText: hint),
      ));
}

cButton(String buttonText, Widget navwid, context) => SizedBox(
      width: 160.w,
      height: 35.h,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: baseColor,
        ),
        onPressed: () {
          Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => navwid,
          ));
        },
        child: Text(
          buttonText,
          style: const TextStyle(fontSize: 24, color: Colors.white),
        ),
      ),
    );
errorText(String text) {
  return Text(
    text,
    style: const TextStyle(
        fontSize: 18, color: Colors.red, fontWeight: FontWeight.bold),
  );
}

Future<dynamic> showdiologue(BuildContext context, String? errorText) {
  return showDialog(
      context: context,
      builder: (context) => AlertDialog(
            content: Text(errorText!),
            actions: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('close'))
            ],
          ));
}
