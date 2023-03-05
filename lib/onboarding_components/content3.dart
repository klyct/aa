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
                  children: const[
                    Center(child: 
                    Text('Soy Sailor moon',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily:'DancingScript',
                      fontSize: 45
                    ),)),

                    Center(child: 
                    Text('campeona de la justicia!',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily:'DancingScript',
                      fontSize: 35
                    ),)),

                    Center(child: 
                    Text('En nombre de la luna, ',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily:'DancingScript',
                      fontSize: 35
                    ),)),

                    Center(child: 
                    Text('corregiré los errores y',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily:'DancingScript',
                      fontSize: 40
                    ),)),

                    Center(child: 
                    Text('triunfaré sobre el mal.',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily:'DancingScript',
                      fontSize: 50
                    ),)),
                  ],
                )
              ],
            ),
    );
  }
}