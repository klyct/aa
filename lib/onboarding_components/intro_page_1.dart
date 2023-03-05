import 'package:aa/onboarding_components/content1.dart';
import 'package:aa/responsive.dart';
import 'package:flutter/material.dart';

import 'Image1.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return  Responsive(
      mobile: Container(
        color: const Color.fromARGB(255, 255, 70, 126),
        child: Row(
          children: [
            Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Expanded(child: Page1Image()),
                        Expanded(child: Content1())
                      ],
                    ),
                  ),
          ],
        ),
            ),

      desktop: Container(
        color: const Color.fromARGB(255, 255, 70, 126),
        child: Row(
          children: [
            Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Expanded(child: Page1Image()),
                        Expanded(child: Content1())
                      ],
                    ),
                  ),
          ],
        ),
            ),
    );
  }  
}