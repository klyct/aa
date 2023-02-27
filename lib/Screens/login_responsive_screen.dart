import 'package:aa/Screens/login_screen.dart';
import 'package:aa/components/background.dart';
import 'package:aa/responsive.dart';
import 'package:flutter/material.dart';

import '../login_components/buttons.dart';
import '../login_components/icon_image.dart';
import '../login_components/users_info.dart';

class LoginResponsiveScreen extends StatelessWidget {
  const LoginResponsiveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Background(child: 
      Responsive(
          mobile: const LoginScreen(), 
          desktop: Row(
            children: [
              Expanded (
                child: Row(
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
                              child: UsersInfo(),
                            )
                          ],
                      )
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
    ));
  }
}
