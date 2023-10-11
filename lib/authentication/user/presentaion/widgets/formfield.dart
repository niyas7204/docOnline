import 'package:doc_online/core/authentication/email_auth.dart';
import 'package:doc_online/utils/text.dart';
import 'package:flutter/material.dart';

class TextFieldWidgets {
  static textEditField(String label, TextEditingController controller,
      GlobalKey<FormState> formKey) {
    bool password = label == 'Password' || label == 'Confirm Password';

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomTexts.labelText(label),
        SizedBox(
          height: 55,
          child: TextFormField(
            onChanged: (value) {
              formKey.currentState!.validate();
            },
            autofillHints:
                label == 'Email' ? const [AutofillHints.email] : null,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return null;
              } else {
                if (label == 'Email') {
                  bool emailValid = isValidEmail(value);

                  if (!emailValid) {
                    return 'Enter a valid email';
                  }
                  return null;
                }
                return null;
              }
            },
            keyboardType: password ? TextInputType.number : TextInputType.text,
            obscureText: password,
            controller: controller,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
