import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key? key,
    required this.child,
    this.topImage = "assets/f1.jpg",
    this.bottomImage = "assets/f1.jpg",
  }) : super(key: key);

  final String topImage, bottomImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        constraints: const BoxConstraints.expand(),
          decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/f1.jpg'),
            fit: BoxFit.cover,
            opacity: .5)
          ),
      ),
    );
  }
}