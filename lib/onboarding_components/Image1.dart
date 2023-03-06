import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Page1Image extends StatelessWidget {
  const Page1Image({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/serena.png',
          height: 250,
          alignment: Alignment.center,),
          //Expanded(child: Lottie.asset('assets/animation/68314-starfall.json',fit: BoxFit.fill),)                                
        ],
      );
  }
}