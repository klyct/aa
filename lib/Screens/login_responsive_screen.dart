import 'package:aa/Screens/login_screen.dart';
import 'package:aa/responsive.dart';
import 'package:flutter/material.dart';

class LoginResponsiveScreen extends StatelessWidget {
  const LoginResponsiveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return 
      Responsive(
          mobile: const LoginScreen(), 
          desktop: Row(
            children: [
              Expanded(child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const[
                  SizedBox(
                    width: 300,
                    child: LoginScreen(),
                  )
                ],
              ))  
          ],
        )
    
    );
  }
}
