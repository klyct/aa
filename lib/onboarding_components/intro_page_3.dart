import 'package:aa/onboarding_components/content3.dart';
import 'package:flutter/material.dart';

import '../responsive.dart';
import 'image3.dart';

class IntroPage3 extends StatelessWidget {
  const IntroPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return  Responsive(
      mobile: Container(
        color: Color.fromARGB(255, 244, 162, 255),
        child: Row(
          children: [
            Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Expanded(child: Page3Image()),
                        Expanded(child: Content3())
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
                        Expanded(child: Page3Image()),
                        Expanded(child: Content3())
                      ],
                    ),
                  ),
          ],
        ),
            ),
    );
  }
}