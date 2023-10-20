import 'package:flutter/material.dart';


class ShowAlert extends StatelessWidget {
final  String errorText;
  const ShowAlert({super.key, required this.errorText});

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        
        return AlertDialog(
                content: Text(errorText),
                actions: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('close'))
                ],
              );
      }
    );
  }
}