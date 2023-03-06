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
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const[
                    Center(child: 
                    Text('Soy Sailor Moon,',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily:'DancingScript',
                      fontSize: 40
                    ),)),

                    Center(child: 
                    Text('campeona de la justicia! ',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily:'DancingScript',
                      fontSize: 30
                    ),)),

                    Center(child: 
                    Text('En nombre de la luna, corregiré los errores',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily:'DancingScript',
                      fontSize: 30
                    ),)),

                    Center(child: 
                    Text('y triunfaré sobre el mal.',
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