import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

import 'onboarding/onboarding.dart';

class splashscreen extends StatelessWidget {
  const splashscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashScreen(
        seconds: 3,
        navigateAfterSeconds: new onboarding(),
        title: new Text(
          'مفقودات',
          style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 50.0,fontFamily: "Tajawal",),
        ),
        image: Image.asset("pic/logo.png"),
        photoSize: 150,
        backgroundColor: Colors.white,
        loaderColor: Colors.white,
      ),
    );
  }
}
