import 'package:aa/responsive.dart';
import 'package:flutter/material.dart';

import '../theme_components/theme_selection.dart';

class ThemeScreen extends StatelessWidget {
  const ThemeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Theme Selection"),
      ),
      body: Responsive(
        
        mobile: Container(
          color: const Color.fromARGB(0, 255, 255, 255),
          child: Row(
            children: [ Expanded(
              child: Column(
                children: const [ Expanded(
                  child: ThemeSelection())],
            ))],
          ),
        ),
        
        desktop: Container(
          color: const Color.fromARGB(255, 255, 255, 255),
          child: Row(
            children: [ Expanded(
              child: Column(
                children: const [ Expanded(
                  child: ThemeSelection())],
            ))],
          ),
        )),
    );
  }
}