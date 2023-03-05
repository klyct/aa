import 'package:flutter/material.dart';

class Content1 extends StatelessWidget {
  const Content1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(0, 255, 206, 240),
      resizeToAvoidBottomInset: false,
      body: Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Center(child: 
                    Text('Moon prism power',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily:'DancingScript',
                      fontSize: 40
                    ),)),
                    Center(child: 
                    Text('Make up!',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily:'DancingScript',
                      fontSize: 60
                    ),)),
                  ],
                )
              ],
            ),
    );
  }
}