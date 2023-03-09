import 'package:flutter/material.dart';

class Content1 extends StatefulWidget {
  const Content1({super.key});

  @override
  State<Content1> createState() => _Content1State();
}

class _Content1State extends State<Content1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(0, 255, 206, 240),
      resizeToAvoidBottomInset: true,
      body: Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children:  const [
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