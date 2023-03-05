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

  static ThemeData moonTheme(BuildContext context){
    final ThemeData theme = ThemeData.from(
      colorScheme: const ColorScheme(
        brightness: Brightness.light, 
        primary: Color.fromARGB(255, 179, 0, 54), 
        onPrimary: Color.fromARGB(255, 179, 0, 54), 
        secondary: Color.fromARGB(255, 110, 214, 255), 
        onSecondary: Color.fromARGB(255, 110, 214, 255),
        error: Color.fromARGB(255, 255, 0, 21), 
        onError: Color.fromARGB(255, 255, 0, 21), 
        background: Color.fromARGB(137, 179, 0, 54),  
        onBackground: Color.fromARGB(137, 179, 0, 54),  
        surface: Color.fromARGB(255, 2, 28, 49), 
        onSurface: Color.fromARGB(255, 2, 28, 49),
        ));
    return theme.copyWith(
      colorScheme: Theme.of(context).colorScheme.copyWith( 
        primary: const Color.fromARGB(255, 179, 0, 54), )
    );
  }
}