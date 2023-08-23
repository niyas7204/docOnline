import 'package:doc_online/userside/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

Widget textEditField(
  String label,
  TextEditingController controller,
) {
  bool password = label == 'Password' || label == 'Confirm Password';

  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      labelText(label),
      TextFormField(
        keyboardType: password ? TextInputType.number : TextInputType.text,
        obscureText: password,
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
