import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../provider/theme_provider.dart';
import '../settings/themes.dart';

class ThemeSelection extends StatefulWidget {
  const ThemeSelection({super.key});

  @override
  State<ThemeSelection> createState() => _ThemeSelectionState();
}

class _ThemeSelectionState extends State<ThemeSelection> {

  final temaController = Get.put(TemaProvider());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(0, 255, 206, 240),
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
                          temaController.temaClaro();
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
                          temaController.temaOscuro();
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
                            temaController.temaPersonalizado();
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