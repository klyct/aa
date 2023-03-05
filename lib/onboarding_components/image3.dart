import 'package:flutter/material.dart';

class Page3Image extends StatelessWidget {
  const Page3Image({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/loading1.gif',
          height: 280,
          alignment: Alignment.center,)                                
        ],
      );
  }
}