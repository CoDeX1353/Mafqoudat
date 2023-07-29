import 'package:flutter/material.dart';
import 'package:mafqoudat/view/components/MyText.dart';
import 'package:mafqoudat/view/components/MyTextField.dart';

class chat extends StatefulWidget {
  const chat({Key? key}) : super(key: key);

  @override
  State<chat> createState() => _chatState();
}

class _chatState extends State<chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color (0xffffff),
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.only(left: 180),
          child: MyText (title: "اسم المستخدم", size: 30,color: Colors.black,),
        ),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container (
              width: double.infinity,height: 200,

              child: Column (
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(height: 50,width: 80,child: Center(child: MyText(title: "اهلا", size: 19)),decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),color: Color (0xffa5a5a5))),
                  Padding(
                    padding: const EdgeInsets.only(left: 350),
                    child: Container(height: 50,width: 80,child: Center(child: MyText(title: "اهلا", size: 19,color: Colors.white,)),decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),color: Color (0xff6F3CFF))),
                  ),
                  Container(height: 50,width: 80,child: Center(child: MyText(title: "اهلا", size: 19)),decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),color: Color (0xffa5a5a5))),
                ],
              ),
            ),
          ),

          MyTextField(hint: "اكتب شيئا..."),
        ],
      ),
    );
  }
}
