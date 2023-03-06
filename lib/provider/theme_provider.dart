import 'package:aa/settings/styles.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider with ChangeNotifier{

  ThemeProvider(BuildContext context){
    _themeData = StylesApp.lightTheme(context);
  }

  ThemeData? _themeData;
  
  getthemeData()=> _themeData;

  setthemeData(ThemeData theme) async {
    _themeData = theme;
    SharedPreferences prefs=await SharedPreferences.getInstance();
    notifyListeners();
  }
  

}