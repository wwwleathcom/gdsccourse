import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final IconData myIcon;
  final String myText;
  final TextInputType myTextInputType;
  final bool? myObscureText;
  const MyTextField({
    super.key,
    required this.myIcon,
    required this.myText,
    required this.myTextInputType,
    this.myObscureText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.amber,
      padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
      child: TextField(
        obscureText: myObscureText ?? false,
        keyboardType: myTextInputType, // dynamic value
        decoration: InputDecoration(
          labelText: myText, // dynamic value
          labelStyle: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Color(0xFF6339B2),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              width: 3,
              color: Color(0xFF6339B2),
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          // fillColor: Colors.yellow,
          // filled: true,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              width: 3,
              color: Color(0xFF6339B2),
            ),
          ),
          prefixIcon: Icon(
            color: const Color(0xFF6339B2),
            myIcon, // dynamic value
            size: 24,
          ),
        ),
      ),
    );
  }
}
