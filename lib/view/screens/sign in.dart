import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mafqoudat/view/components/MyButton.dart';
import 'package:mafqoudat/view/components/MyTextField.dart';
import 'package:mafqoudat/view/screens/menu.dart';
import 'package:mafqoudat/view/screens/register.dart';
import 'package:mafqoudat/view/screens/splash.dart';
import 'package:mafqoudat/view/components/MyTextButton.dart';
import 'email.dart';
import 'home.dart';



class signin extends StatelessWidget {
  const signin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold (
      body: SingleChildScrollView(
        child: Column (
          mainAxisAlignment: MainAxisAlignment.start ,
          children: [
            Container(
              height: 230,color: Color (0xff6F3CFF),
              child: Center (
                child: Column (
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("اهلا بكم في تطبيق",style: TextStyle(
                      color: Colors.white,fontFamily: "Tajawal",fontSize: 20,
                    ),),

                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Image.asset ("pic/word.png",scale: 7,),),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 90,left: 275),
              child: Text ("تسجيل الدخول",style :TextStyle(
                fontSize: 25,
                color: Colors.black,
                fontFamily: "Tajawal",)
               ),
            ),

             Padding(
               padding: const EdgeInsets.only(top: 30),
               child: MyTextField(hint: "رقم الهاتف"),
             ),

            Padding(
              padding: const EdgeInsets.only(top : 30,bottom: 20),
              child: MyTextField(hint: "كلمة المرور",icon: Icons.remove_red_eye ,),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 245),
              child: MyTextButton (title: "هل نسيت رمز الدخول؟",page: emailscr (),)
            ),

            Padding(
              padding: const EdgeInsets.only(top: 80),
              child: MyButton(title: "تسجيل الدخول", page: home()),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 60),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("لا تمتلك حسابا؟",style :TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontFamily: "Tajawal",)),

                  Text ("|",style: TextStyle(fontSize: 24),),

                  MyTextButton(title: "انشاء حساب", page: register())
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
