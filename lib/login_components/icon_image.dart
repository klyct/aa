import 'package:flutter/material.dart';

class IconImage extends StatelessWidget {
  const IconImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Positioned(
                    top: 50,
                    right: 100,
                    child:  Image.asset('assets/l1.png',
                            height: 250,)
                             )                                
              ],
            ),
          )
        ],
      ),
    );
  }
}