import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  MyTextField ({
    required this.hint,
    this.icon,
  });

  final String hint;
  final IconData? icon;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: TextField (
        textAlign: TextAlign.right,
        decoration: InputDecoration(
          hintText: hint,hintStyle: TextStyle(fontSize: 20,
          color: Color (0xffA5A5A5),
          fontFamily: "Tajawal",
             ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color (0xffA5A5A5)
            ),
          borderRadius: BorderRadius.all(Radius.circular(5))
         ),
       ),
      ),
    );
  }
}
