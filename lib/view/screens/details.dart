import 'package:flutter/material.dart';
import 'package:mafqoudat/view/components/MyButton.dart';
import 'package:mafqoudat/view/components/MyText.dart';

import 'chat.dart';

class details extends StatefulWidget {
  const details({Key? key}) : super(key: key);

  @override
  State<details> createState() => _detailsState();
}

class _detailsState extends State<details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color (0xffffff),
        titleSpacing: 150,
        elevation: 0,
        title: MyText(title: "التفاصيل", size: 30,color: Colors.black,),
      ),

      body: Container (
        child: Center(
          child: Container(
            width: double.infinity,height: 650,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 270),
                  child: MyText (title: "بطاقة موحدة", size: 27),
                ),

                Container(
                  width: 400,height: 275,
                  color: Colors.green,
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 200),
                  child: MyText (title: "النوع : مستندات شخصية", size: 20),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 200),
                  child: MyText (title: "الموقع : بغداد , المنصور", size: 20),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 190),
                  child: MyText (title: "رقم الهاتف : 07701234567", size: 20),
                ),
                
                MyButton(title: "بدء المحادثة", page: chat ()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
