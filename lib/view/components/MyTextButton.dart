import 'package:flutter/material.dart';
import 'package:get/get.dart';



class MyTextButton extends StatelessWidget {
  MyTextButton ({required this.title,required this.page}) ;

  final String title;
  final Widget? page;


  @override
  Widget build(BuildContext context) {
    return  TextButton(onPressed: (){
      Get.to(page);},
      child: Text (title,style :TextStyle(
      fontSize: 20,
      color: Color (0xff6F3CFF),
      fontFamily: "Tajawal",)
      ),
    );
  }
}
