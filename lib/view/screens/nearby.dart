import 'package:flutter/material.dart';
import 'package:mafqoudat/view/components/MyButton.dart';
import 'package:mafqoudat/view/components/MyText.dart';
import 'package:mafqoudat/view/components/MyTextField.dart';

class nearby extends StatefulWidget {
  const nearby({Key? key}) : super(key: key);

  @override
  State<nearby> createState() => _nearbyState();
}

class _nearbyState extends State<nearby> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 200),
          child: MyText(title: "عثر بالقرب", size: 30,color: Colors.black,),
        ),
        backgroundColor: Color (0xffffff),
        elevation: 0,
      ),


      body: Container(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 70),
            child: Column (
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: MyTextField (hint: "الموقع"),
                      ),
                      MyButton(title: "بحث", page: null),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Image.asset("pic/Map.png",scale: 1.05,),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
