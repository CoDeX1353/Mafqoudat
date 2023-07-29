import 'package:flutter/material.dart';
import 'package:mafqoudat/view/components/MyText.dart';
import 'package:mafqoudat/view/components/MyTextField.dart';

import '../components/MyDrop.dart';
import 'Mafqoud.dart';
import 'found.dart';



class menu extends StatelessWidget {
  const menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController (
      length: 2,
      child: Scaffold (
        appBar: AppBar (
          title: Padding(
            padding: EdgeInsets.only (left: 190),
            child: MyText (title: "الصفحة الرئيسية", size: 26 , color: Colors.black),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          bottom: TabBar(
            unselectedLabelColor: Colors.black,
              labelColor: Colors.white,
              indicatorColor: Colors.red,
              indicator: BoxDecoration (
                  color: Color (0xff6F3CFF),
                borderRadius: BorderRadius.circular(5),
                border: Border.all(width: 2,color: Color (0xff6F3CFF))
              ),
              tabs: <Widget> [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MyText(title: "مفقود", size: 20,color: Colors.black,),
            ),
            MyText(title: "عثر عليه", size: 20,color: Colors.black),
          ]),
        ),
        body: TabBarView (children: <Widget> [
          Mafqoud (),
          found (),
          ]
        ),

      ),
    );
  }
}
