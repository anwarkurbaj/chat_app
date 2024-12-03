import 'package:flutter/material.dart';

class Text_Filed_Compnent extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;

  const Text_Filed_Compnent(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: Colors.black,
                )),
            filled: true,
            focusedBorder: OutlineInputBorder(
              
                borderSide: BorderSide(color: Colors.blue.shade100)),
            fillColor: Colors.grey.shade100,
            hintText: hintText,
            hintStyle: TextStyle(color: Color.fromARGB(31, 19, 11, 11))));
  }
}
