import 'package:aa/onboarding_components/content1.dart';
import 'package:aa/responsive.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'Image1.dart';

class IntroPage1 extends StatefulWidget {
  const IntroPage1({super.key});

  @override
  State<IntroPage1> createState() => _IntroPage1State();
}

class _IntroPage1State extends State<IntroPage1> {
  @override
  Widget build(BuildContext context) {
    return  Responsive(
      mobile: Container(
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 255, 141, 160),
          
        ),
        child: Row(
          children: [
            Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:  [
                        Expanded(child: Lottie.asset('Assets/animation/55818-its-sleeptime.json',fit: BoxFit.fill),),
                        const Expanded(child: Page1Image()),
                        const Expanded(child: Content1()),
                        ],
                    ),
                  ),
                  
          ],
        ),
            ),

      desktop: Container(
        color: const Color.fromARGB(255, 255, 141, 160),
        child: Row(
          children: [
            Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Expanded(child: Page1Image()),
                        const Expanded(child: Content1()),
                        Expanded(child: Lottie.asset('assets/animation/55818-its-sleeptime.json',fit: BoxFit.fill),)
                      ],
                    ),
                  ),
          ],
        ),
            ),
    );
  }  
}