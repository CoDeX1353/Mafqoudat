import 'package:flutter/material.dart';
import 'package:mafqoudat/view/screens/account.dart';
import 'package:mafqoudat/view/screens/menu.dart';
import 'package:mafqoudat/view/screens/nearby.dart';
import 'package:mafqoudat/view/screens/post.dart';

import '../components/MyText.dart';


class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  int _currentindex =0;
  List pages = [
    menu(),
    nearby(),
    post(),
    account(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body: pages [_currentindex],

      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color (0xff6F3CFF),
          unselectedItemColor: Color (0xffa5a5a5),
          currentIndex: _currentindex,
          onTap: (int newindex){
            setState(() {
              _currentindex=newindex;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon (Icons.home_filled,size: 35),label: "الرئيسية"),
            BottomNavigationBarItem(icon: Icon (Icons.location_on_rounded,size: 35),label: "عثر بالقرب"),
            BottomNavigationBarItem(icon: Icon (Icons.image_outlined,size: 35),label: "اضافة منشور"),
            BottomNavigationBarItem(icon: Icon (Icons.perm_identity,size: 35),label: "الحساب"),
      ]
      ),
    );
  }
}


// Icons.home_filled,
// Icons.location_on_rounded,
// Icons.image_outlined,
// Icons.perm_identity,