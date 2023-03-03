import 'package:flutter/material.dart';
import '../config/helper.dart' as helper;

class MyButton extends StatelessWidget {
  final Function()? myOnTap;
  final String myTextButton;
  final Color myFillColor;
  final Color myTextColor;
  const MyButton({
    super.key,
    required this.myOnTap,
    required this.myTextButton,
    required this.myFillColor,
    required this.myTextColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: myOnTap,
      child: Container(
        decoration: BoxDecoration(
            color: myFillColor,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              width: 1,
              color: helper.frontColor,
            )),
        margin: const EdgeInsets.symmetric(vertical: 10.0),
        padding: const EdgeInsets.symmetric(horizontal: 135.5, vertical: 13.0),
        child: SizedBox(
          width: 76.5,
          child: Text(
            myTextButton,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: myTextColor,
            ),
          ),
        ),
      ),
    );
  }
}
