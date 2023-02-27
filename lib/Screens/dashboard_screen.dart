import 'package:day_night_switcher/day_night_switcher.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/theme_provider.dart';
import '../settings/styles.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  bool isDarkThemeEnable = true;

  @override
  Widget build(BuildContext context) {

    ThemeProvider theme = Provider.of<ThemeProvider>(context);
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('SailorBook c:'),
        ),
        drawer: Drawer(
          child: ListView(
            children:  [
              const UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage('https://www.nuevamujer.com/resizer/iSNbDz5vViNMSheTa2qE2tAu0GI=/800x0/filters:format(jpg):quality(70)/cloudfront-us-east-1.images.arcpublishing.com/metroworldnews/KX7LV6UAHBGRBDMR5WAHWA6FAQ.jpg') ,
                ),
                accountName: Text('Sailor moon'), 
                accountEmail: Text('Moon prism power!')
                ),
               
                DayNightSwitcher(
                isDarkModeEnabled: isDarkThemeEnable,
                onStateChanged: ((isDarkModeEnabled) {
                  isDarkModeEnabled
                      ? theme.setthemeData(StylesApp.lightTheme(context))
                      : theme.setthemeData(StylesApp.darkTheme(context));
                  isDarkThemeEnable = isDarkModeEnabled;
                  setState(() {});
                }))  
            ],
          ),
       
        ),
    );
  }
}