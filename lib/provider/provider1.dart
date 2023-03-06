import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Tema extends GetxController {
  late SharedPreferences preferences;

  String prefkey = "isDarkModeKey";

  void temaClaro() {
    Get.changeTheme(ThemeData(colorScheme: const ColorScheme(
      brightness: Brightness.light,
            error: Color.fromARGB(255, 252, 14, 34),
            onError: Colors.white,
            surface: Color.fromARGB(255, 255, 0, 106),
            onSurface: Colors.white,
            primary: Color.fromARGB(255, 255, 0, 106),
            onPrimary: Colors.white,
            background: Color.fromARGB(255, 0, 0, 0),
            onBackground: Color.fromARGB(255, 255, 255, 255),
            secondary: Color.fromARGB(255, 251, 212, 161),
            onSecondary: Colors.white,
            onPrimaryContainer: Color.fromARGB(255, 243, 203, 208)
            )));       
    preferences.setBool(prefkey, false);
  }

  void temaOscuro() {
    Get.changeTheme(ThemeData(
        colorScheme: const ColorScheme(
            brightness: Brightness.dark,
            error: Color.fromARGB(255, 252, 14, 34),
            onError: Colors.white,
            surface: Color.fromARGB(255, 69, 71, 119),
            onSurface: Colors.white,
            primary: Color.fromARGB(255, 69, 71, 119),
            onPrimary: Color.fromARGB(255, 255, 255, 255),
            background: Color.fromARGB(255, 53, 53, 53),
            onBackground: Color.fromARGB(255, 255, 255, 255),
            secondary: Color.fromARGB(255, 90, 91, 128),
            onSecondary: Colors.white,
            onPrimaryContainer: Color.fromARGB(255, 243, 203, 208)
            )));
    preferences.setBool(prefkey, true);
  }

  void temaPersonalizado(BuildContext context) {
    Get.changeTheme(ThemeData(
        colorScheme: const ColorScheme(
            error: Color.fromARGB(255, 252, 14, 34),
            onError: Colors.white,
            surface: Colors.white,
            onSurface: Colors.black,
            brightness: Brightness.light,
            primary: Color.fromARGB(255, 243, 119, 154),
            onPrimary: Color.fromARGB(255, 255, 255, 255),
            background: Color.fromARGB(255, 255, 255, 255),
            onBackground: Color.fromARGB(255, 0, 0, 0),
            secondary: Color.fromARGB(255, 230, 153, 255),
            onSecondary: Colors.white,
            onPrimaryContainer: Color.fromARGB(255, 251, 212, 161))
            )
          );
  }

  @override
  void onInit() {
    cargarPreferencias().then((value) => cargarTema());

    super.onInit();
  }

  void cargarTema() {
    bool? isDarkMode = preferences.getBool(prefkey);

    if (isDarkMode == null) {
      preferences.setBool(prefkey, false);
      isDarkMode = false;
    }

    (isDarkMode) ? temaOscuro() : temaClaro();
  }

  Future<void> cargarPreferencias() async {
    preferences = await Get.putAsync<SharedPreferences>(
        () async => await SharedPreferences.getInstance());
  }
}