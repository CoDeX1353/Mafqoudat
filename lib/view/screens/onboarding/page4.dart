import 'package:flutter/material.dart';
import 'package:mafqoudat/view/components/MyButton.dart';

import '../sign in.dart';
import '../splash.dart';

class page4 extends StatelessWidget {
  const page4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column (
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset("pic/excited.gif"),
        Text('ما الذي تنتظره؟', style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 50.0,fontFamily: "Tajawal",),),
          MyButton(title: "ابدأ الان", page: signin (),)

        ],
      ),
    );
  }
}
