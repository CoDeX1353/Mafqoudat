import 'package:flutter/material.dart';
import 'package:mafqoudat/view/components/MyButton.dart';
import 'package:mafqoudat/view/components/MyText.dart';

import '../components/MyTextButton.dart';
import '../components/MyTextField.dart';
import 'details.dart';

class Mafqoud extends StatefulWidget {
  const Mafqoud({Key? key}) : super(key: key);

  @override
  State<Mafqoud> createState() => _MafqoudState();
}

class _MafqoudState extends State<Mafqoud> {
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
                MyButton (title: "بحث", page: Mafqoud ()),
                Container (
                  width: 425,height: 200,
                  color: Colors.blue,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row (
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MyTextButton (title: 'بطاقة موحدة', page: details (),),
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

