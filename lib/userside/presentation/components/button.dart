import 'package:doc_online/userside/presentation/components/widgets.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
final  String buttonText;
 final  Widget routePage;
const CustomButton({super.key,required this.buttonText,required this.routePage});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160,
      height: 35,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: baseColor,
        ),
        onPressed: () {
          Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => routePage,
          ));
        },
        child: Text(
          buttonText,
          style: const TextStyle(fontSize: 24, color: Colors.white),
        ),
      ),
    );
  }
}
