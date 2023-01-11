import 'package:flutter/material.dart';
import 'package:mafqoudat/view/components/MyTextField.dart';
import 'package:mafqoudat/view/screens/forgetpassword.dart';
import 'package:mafqoudat/view/screens/sign%20in.dart';
import '../components/MyButton.dart';
import '../components/MyOTP.dart';
import '../components/MyText.dart';

class emailscr extends StatelessWidget {
  const emailscr ({Key? key}) : super(key: key);

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
            padding: const EdgeInsets.only(top: 100),
            child: MyTextField(hint: "البريد الالكتروني"),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 30,left: 100),
            child: Text ("سيتم ارسال رمز التأكيد على البريد الالكتروني",style: TextStyle(
                fontSize: 18,color: Color (0xffA5A5A5),fontFamily: "Tajawal")),
          ),


          Padding(
            padding: const EdgeInsets.only(top: 500),
            child: MyButton (title: "استمرار", page: fpw()),
          )
        ],
      ),
    );
  }
}
