import 'package:flutter/material.dart';

class Content3 extends StatelessWidget {
  const Content3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(0, 255, 206, 240),
      resizeToAvoidBottomInset: false,
      body: Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(child: Text('Moon Prism Power')),
                  ],
                )
              ],
            ),
    );
  }
}