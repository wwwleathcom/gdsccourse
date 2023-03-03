import 'package:flutter/material.dart';
import '../config/helper.dart' as helper;

class MyTextFormField extends StatelessWidget {
  final TextEditingController myController;
  final IconData myIcon;
  final String myText;
  final TextInputType myTextInputType;
  final bool? myObscureText;
  const MyTextFormField({
    super.key,
    required this.myController,
    required this.myIcon,
    required this.myText,
    required this.myTextInputType,
    this.myObscureText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.amber,
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: TextFormField(
        controller: myController, // dynamic value
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please Enter $myText';
          }
          return null;
        },

        obscureText: myObscureText ?? false,
        keyboardType: myTextInputType, // dynamic value
        decoration: InputDecoration(
          labelText: myText, // dynamic value
          labelStyle: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Color(0xFF6339B2),
          ),
          errorStyle: const TextStyle(
            fontSize: 14.0,
          ),
          errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              width: 1,
              color: Color.fromARGB(255, 223, 42, 42),
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              width: 1,
              color: Color.fromARGB(255, 223, 42, 42),
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              width: 1,
              color: Color(0xFF6339B2),
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              width: 1,
              color: Color(0xFF6339B2),
            ),
          ),
          prefixIcon: Icon(
            color: helper.frontColor,
            myIcon, // dynamic value
            size: 24,
          ),
        ),
      ),
    );
  }
}
