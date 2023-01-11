import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  MyText ({required this.title,required this.size});
  final String title;
  final double size;


  @override
  Widget build(BuildContext context) {
    return Text(title, style: TextStyle (
      fontSize: size,
      fontFamily: "Tajawal",
      color: Colors.black,
    ),);
  }
}
