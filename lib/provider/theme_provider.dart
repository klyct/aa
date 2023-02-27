import 'package:aa/settings/styles.dart';
import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier{

  ThemeProvider(BuildContext context){
    _themeData = StylesApp.lightTheme(context);
  }

  ThemeData? _themeData  ;
  getthemeData()=> _themeData;
  setthemeData(ThemeData theme){
    _themeData = theme;
    notifyListeners();
  }

}