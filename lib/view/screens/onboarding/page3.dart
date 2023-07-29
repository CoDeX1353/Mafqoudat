import 'package:flutter/material.dart';

class page3 extends StatelessWidget {
  const page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color (0xffffffff),
      body: Column (
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset("pic/man.gif"),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Image.asset("pic/page3.PNG"),
          ),

        ],
      ),
    );
  }
}
