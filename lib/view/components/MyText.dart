import 'package:flutter/material.dart';

class MyText extends StatelessWidget {

  final String title;
  final double size;
  final Color? color;

  MyText ({required this.title,required this.size,  this.color});


  @override
  Widget build(BuildContext context) {
    return Text(title, style: TextStyle (
      fontSize: size,
      fontFamily: "Tajawal",
      color: color,
    ),);
  }
}
