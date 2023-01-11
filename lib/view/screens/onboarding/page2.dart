import 'package:flutter/material.dart';

class page2 extends StatelessWidget {
  const page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column (
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset("pic/thinking.gif"),
          Image.asset("pic/page2.PNG"),

        ],
      ),
    );
  }
}
