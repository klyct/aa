import 'package:flutter/material.dart';

class IconImage extends StatelessWidget {
  const IconImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/l1.png',
        height: 250,)                                
      ],
    );
  }
}