import 'package:doc_online/userside/presentation/core/widgets.dart';
import 'package:flutter/material.dart';

Widget textEditField(
  String label,
  TextEditingController controller,
) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      text20(label),
      TextFormField(
        controller: controller,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    ],
  );
}
