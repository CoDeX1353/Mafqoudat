import 'package:flutter/material.dart';
import 'package:mafqoudat/view/components/MyButton.dart';
import 'package:mafqoudat/view/screens/sign%20in.dart';
import 'package:mafqoudat/view/components/MyOTP.dart';
import 'package:mafqoudat/view/components/MyText.dart';



class fpw extends StatelessWidget {
  const fpw({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.only(left: 150),
          child: Text ("هل نسيت رمز الدخول؟",style :TextStyle(
            fontSize: 25,
            color: Colors.black,
            fontFamily: "Tajawal",)),
        ),
      ),

      body: Column (
        mainAxisAlignment: MainAxisAlignment.start,
        children: [

          Padding(
            padding: const EdgeInsets.only(left: 280,top: 100),
            child: MyText (title: "ادخل رمز التأكيد", size: 24),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 30,left: 100),
            child: Text ("ادخل رمز التأكيد المرسل الى بريدك الالكتروني",style: TextStyle(
                fontSize: 18,color: Color (0xffA5A5A5),fontFamily: "Tajawal")),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 75),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyOTP(),
                MyOTP(),
                MyOTP(),
                MyOTP(),
              ],
            ),
          ),
          
          Padding(
            padding: const EdgeInsets.only(top: 300),
            child: MyButton (title: "استمرار", page: signin()),
          )
        ],
      ),
    );
  }
}
