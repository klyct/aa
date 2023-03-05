import 'package:flutter/material.dart';

class Page3Image extends StatelessWidget {
  const Page3Image({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/smoon.png',
          height: 350,
          alignment: Alignment.center,)                                
        ],
      );
  }
}