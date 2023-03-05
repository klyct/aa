import 'package:aa/Screens/login_responsive_screen.dart';
import 'package:aa/onboarding_components/intro_page_1.dart';
import 'package:aa/onboarding_components/intro_page_3.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../onboarding_components/intro_page_2.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController _controller = PageController();
  bool onLastPage=false;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children:[ 
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onLastPage=(index==2);
              });
            },
            children: const [
              IntroPage1(),
              IntroPage2(),
              IntroPage3(),
            ],
          ),
        Container(
          alignment: const Alignment(0,0.9),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                child: Text("Skip"),
                onTap:() {
                  _controller.jumpToPage(2);
                },),

              SmoothPageIndicator(
                controller: _controller, 
                count: 3),
              onLastPage 
              ? GestureDetector(
                child: Text("Done"),
                onTap: () {
                  Navigator.push(context, 
                  MaterialPageRoute(builder: (context){
                    return LoginResponsiveScreen();
                  }));
                },)
                : GestureDetector(
                child: Text("Next"),
                onTap: () {
                  _controller.nextPage(
                    duration: Duration(milliseconds: 500), 
                    curve: Curves.easeIn);
                },)
            ],
          )
          ),
        ],
      ),
    );
  }
}