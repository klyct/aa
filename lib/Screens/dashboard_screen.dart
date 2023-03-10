import 'package:aa/Screens/list_post_screen.dart';
import 'package:aa/Screens/theme_screen.dart';
import 'package:aa/widgets/modal_add_posts.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/flags_provider.dart';
//import '../provider/theme_provider.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  bool isDarkThemeEnable = true;

  @override
  Widget build(BuildContext context) {

    //ThemeProvider theme = Provider.of<ThemeProvider>(context);
    FlagsProvider flags = Provider.of<FlagsProvider>(context);
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('SailorBook c:'),
        actions: <Widget>[
    IconButton(
      icon: const Icon(
        Icons.settings,
        color: Colors.white,
      ),
      onPressed: () {
        Navigator.push(context, 
                  MaterialPageRoute(builder: (context){
                    return const ThemeScreen();
                  }));
      },
    )
  ],),
        body: flags.getupdateposts()==true? const ListPostScreen(): const ListPostScreen(), 
        floatingActionButton: FloatingActionButton.extended(
          onPressed: _openCustomeDialog ,
          icon: const Icon(Icons.add_comment), 
          label: const Text('Add Posts')),
        drawer: Drawer(
          child: ListView(
            children:  const [
              UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage('https://www.nuevamujer.com/resizer/iSNbDz5vViNMSheTa2qE2tAu0GI=/800x0/filters:format(jpg):quality(70)/cloudfront-us-east-1.images.arcpublishing.com/metroworldnews/KX7LV6UAHBGRBDMR5WAHWA6FAQ.jpg') ,
                ),
                accountName: Text('Sailor moon'), 
                accountEmail: Text('Moon_prism@power.com')
                ),
            ],
          ),
       
        ),
    );
  }


   _openCustomeDialog() {
    return showGeneralDialog(
      context: context, 
      barrierColor: const Color.fromARGB(255, 255, 162, 193).withOpacity(.5),
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