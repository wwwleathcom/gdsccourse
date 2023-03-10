import 'package:flutter/material.dart';
import '../config/helper.dart' as helper;

class MyTextFormField extends StatefulWidget {
  final TextEditingController myController;
  final IconData myIcon;
  final String myText;
  final TextInputType myTextInputType;
  final bool myObscureText;
  const MyTextFormField({
    super.key,
    required this.myController,
    required this.myIcon,
    required this.myText,
    required this.myTextInputType,
    required this.myObscureText,
  });

  @override
  State<MyTextFormField> createState() => _MyTextFormFieldState();
}

class _MyTextFormFieldState extends State<MyTextFormField> {
  bool _obscured = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: TextFormField(
        controller: widget.myController, // dynamic value
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please Enter ${widget.myText}';
          }
          return null;
        },

        obscureText: widget.myObscureText ? _obscured : false,
        keyboardType: widget.myTextInputType, // dynamic value
        decoration: InputDecoration(
          labelText: widget.myText, // dynamic value
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
            borderSide: BorderSide(
              width: 1,
              color: helper.frontColor,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 1,
              color: helper.frontColor,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              width: 1,
              color: helper.frontColor,
            ),
          ),
          prefixIcon: Icon(
            color: helper.frontColor,
            widget.myIcon, // dynamic value
            size: 24,
          ),
          suffixIcon: widget.myObscureText
              ? Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 4, 0),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _obscured = !_obscured;
                      });
                    },
                    child: Icon(
                      color: helper.frontColor,
                      _obscured
                          ? Icons.visibility_off_rounded
                          : Icons.visibility_rounded,
                      size: 24,
                    ),
                  ),
                )
              : null,
        ),
      ),
    );
  }
}
