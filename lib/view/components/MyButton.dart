import 'package:flutter/material.dart';
import 'package:get/get.dart';



class MyButton extends StatelessWidget {
  MyButton ({required this.title,required this.page}) ;

  final String title;
  final Widget? page;


  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: (){
        Get.to(page);
      },
      child: Container(
        height: 45,width: 430,
        decoration: BoxDecoration (borderRadius: BorderRadius.circular(5),color: Color (0xff6F3CFF),),
        child: Center (
          child: Text (title,style: TextStyle(
            fontSize: 20,
            color: Colors.white,
              fontFamily: "Tajawal",
          ),),
        ),
      ),
    );
  }
}
