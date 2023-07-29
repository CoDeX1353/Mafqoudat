import 'package:flutter/material.dart';
import 'package:get/get.dart';



class MySettingsButton extends StatelessWidget {
  MySettingsButton ({required this.title,required this.page,required this.icon}) ;

  final String title;
  final Widget? page;
  final IconData? icon;


  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: (){
        Get.to(page);
      },
      child: Container(
        height: 50,width: 430,
        decoration: BoxDecoration (borderRadius: BorderRadius.circular(7), border: Border.all(color: Color (0xff6F3CFF),width: 2),color: Color (0xffF7F4FF),),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row (
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Icon(icon,color: Color (0xff6F3CFF),size: 30),

              Text (title,style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontFamily: "Tajawal",
              ),),

            ],
          ),
        ),
      ),
    );
  }
}
