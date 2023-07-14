import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const baseColor = Color.fromRGBO(31, 9, 79, 1);
text20(text) => Text(text,
    style: const TextStyle(
        fontSize: 17, fontWeight: FontWeight.w600, color: baseColor),
    overflow: TextOverflow.ellipsis,
    maxLines: 3);
header1(String text) => Text(
      text,
      style: const TextStyle(
          fontSize: 30, fontWeight: FontWeight.w600, color: baseColor),
    );
cText1(String text) => Text(
      text,
      style: const TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w500,
          color: Color.fromRGBO(31, 9, 79, 0.815)),
    );
heading(String text) => Text(
      text,
      style: const TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w500,
          color: Color.fromRGBO(31, 9, 79, 0.815)),
    );
space1h() => const SizedBox(
      height: 10,
    );
space1w() => const SizedBox(
      width: 10,
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

profile() {
  return const CircleAvatar(
    backgroundColor: Color.fromRGBO(217, 217, 217, 1),
    radius: 20,
    child: Center(
      child: Icon(
        Icons.person_2_sharp,
        color: Color.fromRGBO(56, 86, 59, 1),
      ),
    ),
  );
}
