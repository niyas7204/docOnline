import 'package:doc_online/userside/presentation/core/widgets.dart';
import 'package:flutter/material.dart';

validateFieldEdit(List<TextEditingController> controllers, List<String> labels,
    BuildContext context) {
  bool? isValid;
  for (int i = 0; i < controllers.length; i++) {
    if (controllers[i].text.isNotEmpty) {
      isValid = true;
    } else {
      isValid = false;
      showAlertdiolog(context, '${labels[i]} is empty ');
      break;
    }
  }
  return isValid;
}
