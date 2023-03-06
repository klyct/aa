import 'package:flutter/material.dart';

class Page2Image extends StatelessWidget {
  const Page2Image({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/sailor.jpg',
          height: 250,
          alignment: Alignment.center,)                                
        ],
      );
  }
}