import 'package:aa/Screens/login_screen.dart';
import 'package:aa/responsive.dart';
import 'package:flutter/material.dart';

import '../login_components/buttons.dart';
import '../login_components/icon_image.dart';

class LoginResponsiveScreen extends StatelessWidget {
  const LoginResponsiveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsive(
          mobile: const LoginScreen(), 
          desktop: Container(
            decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/f1.jpg'),
            fit: BoxFit.cover,
            opacity: .5)
          ),
            child: Row(
            children: [
              Expanded (
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Expanded(
                      child: IconImage()
                      ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          SizedBox(
                            width: 450,
                            child: ButtonsLogin(),
                          )
                        ],
                    )
                    )
                  ],
                )
            )  
          ],
        )
    )
    );
  }
}
