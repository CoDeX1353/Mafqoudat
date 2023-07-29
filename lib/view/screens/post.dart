import 'package:flutter/material.dart';
import 'package:mafqoudat/view/components/MyButton.dart';
import 'package:mafqoudat/view/components/MyTextField.dart';

import '../components/MyText.dart';

class post extends StatefulWidget {
  const post({Key? key}) : super(key: key);

  @override
  State<post> createState() => _postState();
}

class _postState extends State<post> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 200),
          child: MyText(title: "اضافة منشور", size: 30,color: Colors.black,),
        ),
        backgroundColor: Color (0xffffff),
        elevation: 0,
      ),

      body: Container(
        child: Center(
          child: Container (
            height: 600,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyTextField(hint: "اختر الحالة"),
                MyTextField(hint: "اختر النوع"),
                MyTextField(hint: "الموقع"),
                MyTextField(hint: "الاسم"),
                MyTextField(hint: "رقم الهاتف"),

                Padding(
                  padding: const EdgeInsets.only(top: 35),
                  child: MyButton(title: "نشر", page: null),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
