import 'package:aa/Screens/onboarding_screen.dart';
import 'package:aa/provider/theme_provider.dart';
import 'package:aa/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  SharedPreferences prefs=await SharedPreferences.getInstance();
  runApp( const MyApp());
}
class MyApp extends StatelessWidget {
    const MyApp({Key? key}) : super(key: key);

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
    return GetMaterialApp (
        theme: theme.getthemeData(),
        routes: getApplicationRoutes(),
        home: const OnBoardingScreen(),
      );
  }
}