import 'package:flutter/material.dart';
import 'package:mafqoudat/view/components/MyButton.dart';
import 'package:mafqoudat/view/components/MyText.dart';

import '../components/MyTextButton.dart';
import '../components/MyTextField.dart';
import 'details.dart';

class found extends StatefulWidget {
  const found({Key? key}) : super(key: key);

  @override
  State<found> createState() => _foundState();
}

class _foundState extends State<found> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body: Center(
        child: SingleChildScrollView(
          child: Container (
              height: 650,width: double.infinity,
              //color: Colors.red,
              child : Column (
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MyTextField (hint: "النوع"),
                  MyTextField (hint: "الموقع"),
                  MyTextField (hint: "الاسم"),
                  MyButton (title: "بحث", page: found ()),
                  Container (
                    width: 425,height: 200,
                    color: Colors.red,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Row (
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MyTextButton (title: 'بطاقة موحدة', page: details ()),
                        MyText(title: "العراق,بغداد", size: 14),
                      ],
                    ),
                  ),
                ],
              )
          ),
        ),
      ),
    );
  }
}

