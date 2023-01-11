import 'package:flutter/material.dart';

class page3 extends StatelessWidget {
  const page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column (
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset("pic/man.gif"),
          Image.asset("pic/page3.PNG"),

        ],
      ),
    );
  }
}
