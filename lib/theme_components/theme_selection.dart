import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/theme_provider.dart';
import '../settings/styles.dart';

class ThemeSelection extends StatefulWidget {
  const ThemeSelection({super.key});

  @override
  State<ThemeSelection> createState() => _ThemeSelectionState();
}

class _ThemeSelectionState extends State<ThemeSelection> {

  @override
  Widget build(BuildContext context) {
    ThemeProvider theme = Provider.of<ThemeProvider>(context);
    return Scaffold(
      backgroundColor: Color.fromARGB(0, 255, 206, 240),
      resizeToAvoidBottomInset: false,
      body: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                       Center(child: 
                      GestureDetector(
                        child:const Text('Light Theme',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25
                        ),),
                        onTap: () {
                          theme.setthemeData(StylesApp.lightTheme(context));
                          setState(() {
                            
                          });
                        },
                      ),
                      ),
                      const SizedBox(height: 20,),
                      Center(child: 
                      GestureDetector(
                        child: const Text('Dark Theme',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25
                        ),
                        ),
                        onTap: () {
                          theme.setthemeData(StylesApp.darkTheme(context));
                          setState(() {
                            
                          });
                        },
                      )),
                      const SizedBox(height: 20,),                
                       GestureDetector(
                         child: const Center(child: Text('Moon Theme',
                                             style: TextStyle(
                          color: Colors.black,
                          fontSize: 25
                          ),
                          )
                          ),
                          onTap: () {
                            theme.setthemeData(StylesApp.moonTheme(context));
                            setState(() {
                              
                            });
                        },
                       ),
                    ],
                  ),
                )
              ],
            ),
    );
  }
}