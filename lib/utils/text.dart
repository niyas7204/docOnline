import 'package:doc_online/components/widgets.dart';
import 'package:flutter/material.dart';

class CustomTexts {
  static text20(text) => Text(text,
      style: const TextStyle(
          fontSize: 20, fontWeight: FontWeight.w600, color: baseColor),
      overflow: TextOverflow.ellipsis,
      maxLines: 3);
  static header1(String text) => Text(
        text,
        style: const TextStyle(
            fontSize: 30, fontWeight: FontWeight.w600, color: baseColor),
      );
  static labelText(String text) => Text(
        text,
        style: const TextStyle(
            fontSize: 20, fontWeight: FontWeight.bold, color: baseColor),
      );
  static commonText1(String text) => Text(
        text,
        style: const TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w500,
            color: Color.fromRGBO(31, 9, 79, 0.815)),
      );

  static errorText(String text) {
    return Text(
      text,
      style: const TextStyle(
          fontSize: 18, color: Colors.red, fontWeight: FontWeight.bold),
    );
  }
}
