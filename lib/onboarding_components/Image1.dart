import 'package:flutter/material.dart';

class Page1Image extends StatelessWidget {
  const Page1Image({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/makeup.png',
          height: 280,
          alignment: Alignment.center,)                                
        ],
      );
  }
}