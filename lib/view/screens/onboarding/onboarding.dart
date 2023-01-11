import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mafqoudat/view/screens/onboarding/page1.dart';
import 'package:mafqoudat/view/screens/onboarding/page2.dart';
import 'package:mafqoudat/view/screens/onboarding/page3.dart';
import 'package:mafqoudat/view/screens/onboarding/page4.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

final controller =PageController(
  initialPage: 0
);

class onboarding extends StatelessWidget {
  const onboarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 80),
          child: PageView (
            controller: controller,
            children: [
              page1(),
              page2(),
              page3(),
              page4(),
            ],
          ),
        ),
      ),
      bottomSheet: Container (
        padding: EdgeInsets.symmetric(horizontal: 10),
        height: 80,
        child: Row (
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(onPressed: () { controller.jumpToPage(3);}, child: Text ("SKIP")),
            Center(
              child: SmoothPageIndicator (
                controller: controller,
                count: 4,
                effect: WormEffect(
                  spacing: 15,
                  dotColor: Color (0xffA5A5A5),
                  activeDotColor: Color (0xff6F3CFF)
                ),
              ),
            ),
            TextButton(onPressed: (){controller.nextPage(duration: Duration(milliseconds: 500), curve: Curves.easeInOut);}, child: Text ("NEXT")),
          ],
        ),
      ),
    );
  }
}
