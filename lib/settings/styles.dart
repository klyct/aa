import 'package:flutter/material.dart';

class StylesApp{
  //static Color appPrimaryColor = const Color.fromARGB(255, 255, 14, 155);

  static ThemeData darkTheme(BuildContext context){
    final ThemeData theme = ThemeData.dark();
    return theme.copyWith(
      colorScheme: Theme.of(context).colorScheme.copyWith( 
        primary: const Color.fromARGB(255, 128, 0, 74))
    );
  }

  static ThemeData lightTheme(BuildContext context){
    final ThemeData theme = ThemeData.light();
    return theme.copyWith(
      colorScheme: Theme.of(context).colorScheme.copyWith( 
        primary: const Color.fromARGB(255, 255, 14, 155))
      
    );
  }
}