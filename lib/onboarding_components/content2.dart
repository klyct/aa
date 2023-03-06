import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Content2 extends StatelessWidget {
  const Content2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(0, 255, 206, 240),
      resizeToAvoidBottomInset: false,
      body: Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                     Center(child: 
                    Text('La Bella Guardiana del Amor',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily:'DancingScript',
                      fontSize: 45
                    ),)),

                     Center(child: 
                    Text('y Justicia en traje de marinera!',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily:'DancingScript',
                      fontSize: 40
                    ),)),

                    Center(child: 
                    Text('Sailor moon!',
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