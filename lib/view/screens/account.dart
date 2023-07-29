import 'package:flutter/material.dart';
import 'package:mafqoudat/view/components/MyText.dart';
import 'package:mafqoudat/view/components/MySettingsButton.dart';

class account extends StatefulWidget {
  const account({Key? key}) : super(key: key);

  @override
  State<account> createState() => _accountState();
}

class _accountState extends State<account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column (
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          MyText(title: "Abdulla Ali", size: 28),
          MyText(title: "xCoDeXx1353@gmail.com", size: 16),
          Padding(
            padding: const EdgeInsets.symmetric(vertical :200 ),
            child: Container (
              height: 250,width: double.infinity,

              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MySettingsButton(title: "تعديل الحساب", page: null, icon: Icons.person),
                  MySettingsButton(title: "الاعدادات", page: null, icon: Icons.settings),
                  MySettingsButton(title: "تسجيل الخروج", page: null, icon: Icons.logout),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
