import 'package:flutter/material.dart';

class Page3Image extends StatelessWidget {
  const Page3Image({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/smooon.png',
          //sailor_moon.webp
          height: 280,
          alignment: Alignment.center,)                                
        ],
      );
  }
}