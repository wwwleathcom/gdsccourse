import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Function()? myOnTap;
  final String myTextButton;
  final Color myColor;
  const MyButton({
    super.key,
    required this.myOnTap,
    required this.myTextButton,
    required this.myColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: myOnTap,
      child: Container(
        decoration: BoxDecoration(
            color: myColor,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              width: 3,
              color: const Color(0xFF6339B2),
            )),
        margin: const EdgeInsets.symmetric(vertical: 10.0),
        padding: const EdgeInsets.symmetric(horizontal: 135.5, vertical: 13.0),
        child: SizedBox(
          width: 76.5,
          child: Text(
            myTextButton,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
