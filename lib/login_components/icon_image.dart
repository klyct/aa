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
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Positioned(
                    top: 20,
                    child:  Image.asset('assets/l1.png',
                            height: 200,)
                             )                                
              ],
            ),
          )
        ],
      ),
    );
  }
}