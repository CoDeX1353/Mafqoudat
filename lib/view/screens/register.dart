import 'package:flutter/material.dart';
import 'package:mafqoudat/view/components/MyButton.dart';
import 'package:mafqoudat/view/components/MyTextField.dart';
import 'package:mafqoudat/view/screens/sign%20in.dart';

import 'menu.dart';


class register extends StatelessWidget {
  const register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.only(left: 220),
          child: Text ("انشاء حساب", textAlign: TextAlign.end,
              style :TextStyle(
            fontSize: 25,
            color: Colors.black,
            fontFamily: "Tajawal",)),
        ),
      ),
      
      body: SingleChildScrollView(
        child: Container(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 100),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 400,
                    child: Column (
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MyTextField(hint: "الاسم"),
                        MyTextField(hint: "رقم الهاتف"),
                        MyTextField(hint: "كلمة المرور",icon: Icons.remove_red_eye),
                        MyTextField(hint: "تأكيد كلمة المرور",icon: Icons.remove_red_eye),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 120),
                    child: MyButton(title: "انشاء حساب", page: signin()),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
