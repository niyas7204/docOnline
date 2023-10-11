import 'package:doc_online/userside/presentation/components/widgets.dart';
import 'package:doc_online/utils/text.dart';
import 'package:flutter/material.dart';
class TextFieldWidgets{
static  textEditField(
  String label,
  TextEditingController controller,
) {
  bool password = label == 'Password' || label == 'Confirm Password';

  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      CustomTexts.labelText(label),
      TextField(
      
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

}
