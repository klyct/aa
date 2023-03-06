import 'package:aa/responsive.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'content2.dart';
import 'image2.dart';

class IntroPage2 extends StatelessWidget {
  const IntroPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return  Responsive(
      mobile: Container(
        color: const Color.fromARGB(255, 160, 177, 204),
        child: Row(
          children: [
            Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:[
                        const Expanded(child: Page2Image()),
                        const Expanded(child: Content2()),
                        Expanded(child: Lottie.asset('assets/animation/74927-clear-night-moon.json',fit: BoxFit.fill),),
                       
                      ],
                    ),
                  ),
          ],
        ),
            ),

      desktop: Container(
        color: const Color.fromARGB(255, 160, 177, 204),
        child: Row(
          children: [
            Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Expanded(child: Page2Image()),
                        const Expanded(child: Content2()),
                        Expanded(child: Lottie.asset('assets/animation/74927-clear-night-moon.json',fit: BoxFit.fill),),
                       
                      ],
                    ),
                  ),
          ],
        ),
            ),
    );
  }  
}