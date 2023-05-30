import 'package:flutter/material.dart';


class MyTextField extends StatelessWidget {
  const MyTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0 ),
        child: TextField(
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white)
            ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red.shade300, width: 2.5)
           ),
          fillColor: Colors.white,
          filled: true
          ),
        ),
    );
  }
}
