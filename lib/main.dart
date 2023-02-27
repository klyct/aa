import 'package:aa/provider/theme_provider.dart';
import 'package:aa/routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Screens/login_responsive_screen.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
   const MyApp({super.key});

  @override
  Widget build(BuildContext context) {  

    return  ChangeNotifierProvider(
      create: (context)=>ThemeProvider(context),
      child: aaApp()
    ); 
  }
}

class  aaApp extends StatelessWidget {
    aaApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    
    ThemeProvider theme = Provider.of<ThemeProvider>(context);

    return MaterialApp (
        theme: theme.getthemeData(),
        routes: getApplicationRoutes(),
        home:  const LoginResponsiveScreen(),
      );
  }
}