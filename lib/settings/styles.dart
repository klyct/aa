import 'package:flutter/material.dart';

class StylesApp {
  
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
        brightness: Brightness.dark, 
        primary: Color.fromARGB(255, 65, 0, 109), 
        onPrimary: Color.fromARGB(255, 65, 0, 109), 
        secondary: Color.fromARGB(255, 255, 255, 255), 
        onSecondary: Color.fromARGB(255, 255, 255, 255),
        error: Color.fromARGB(255, 255, 255, 255), 
        onError: Color.fromARGB(255, 255, 255, 255), 
        background: Color.fromARGB(255, 96, 95, 97), 
        onBackground: Color.fromARGB(255, 96, 95, 97),   
        surface: Color.fromARGB(255, 255, 255, 255), 
        onSurface: Color.fromARGB(255, 255, 255, 255),
        )
      );
    return theme.copyWith(
      colorScheme: Theme.of(context).colorScheme.copyWith( 
        primary: const Color.fromARGB(255, 65, 0, 109), )
    );
  }

}