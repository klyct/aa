import 'package:aa/Screens/dashboard_screen.dart';
import 'package:flutter/material.dart';
import 'Screens/login_screen.dart';
import 'Screens/register_screen.dart';


Map<String, WidgetBuilder> getApplicationRoutes(){
  return <String, WidgetBuilder>{
    '/Login':(BuildContext context) =>  const LoginScreen(),
    '/Reg':(BuildContext context) =>  const RegiterFormScreen(),
    '/dash':(BuildContext context) =>  const DashboardScreen(),

  };
}
