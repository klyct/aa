import 'package:aa/Screens/list_post_screen.dart';
import 'package:aa/Screens/theme_screen.dart';
import 'package:aa/widgets/common_buttons.dart';
import 'package:aa/widgets/modal_add_posts.dart';
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
        title: const Text('SailorBook c:'),),
        body: const ListPostScreen(), 
        floatingActionButton: FloatingActionButton.extended(
          onPressed: _openCustomeDialog,
          icon: const Icon(Icons.add_comment), 
          label: const Text('Add Posts')),
        drawer: Drawer(
          child: ListView(
            children:  [
              const UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage('https://www.nuevamujer.com/resizer/iSNbDz5vViNMSheTa2qE2tAu0GI=/800x0/filters:format(jpg):quality(70)/cloudfront-us-east-1.images.arcpublishing.com/metroworldnews/KX7LV6UAHBGRBDMR5WAHWA6FAQ.jpg') ,
                ),
                accountName: Text('Sailor moon'), 
                accountEmail: Text('Moon_prism@power.com')
                ),
               
                /*DayNightSwitcher(
                isDarkModeEnabled: isDarkThemeEnable,
                onStateChanged: ((isDarkModeEnabled) {
                  isDarkModeEnabled
                      ? )
                      : theme.setthemeData(StylesApp.darkTheme(context));
                  isDarkThemeEnable = isDarkModeEnabled;
                  setState(() {});
                })) , */

                CommonButtons(
                  textLabel: 'Select Theme', 
                  textColor: Colors.white, 
                  backgroundColor: Colors.black, 
                  onTap: () {
                  Navigator.push(context, 
                  MaterialPageRoute(builder: (context){
                    return const ThemeScreen();
                  }));
                },)
            ],
          ),
       
        ),
    );
  }


   _openCustomeDialog(){
    return showGeneralDialog(
      context: context, 
      barrierColor: Colors.pink.withOpacity(.5),
      transitionBuilder: (context, animation, secondaryAnimation, child) {
        return Transform.scale(
          scale: animation.value,
          child: Opacity(
            opacity: animation.value,
            child: const ModalAddPost(),
          ),
        );
      },
      transitionDuration: const Duration(milliseconds: 200),
      barrierDismissible: true,
      barrierLabel: '',
      pageBuilder: (context, animation, secondaryAnimation) {
        return Container();
      },
    );
  }

}