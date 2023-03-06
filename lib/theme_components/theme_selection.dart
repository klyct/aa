import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import '../provider/provider1.dart';
import '../provider/theme_provider.dart';

class ThemeSelection extends StatefulWidget {
  const ThemeSelection({Key? key}) : super(key: key);

  @override
  _ThemeSelection createState() => _ThemeSelection();
}

class _ThemeSelection extends State<ThemeSelection> {
  int _value = 3;

  @override
  Widget build(BuildContext context) {
    const double _containerWidth = 450.0;
    final themecontroller = Get.put(Tema());
    ThemeProvider theme = Provider.of<ThemeProvider>(context);
    return Scaffold(
        body: Column(
          children: [
            Text(
              "Temas",
              style: TextStyle(
                  color: Theme.of(context).colorScheme.onBackground,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 750,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  RadioListTile(
                    value: 1,
                    groupValue: _value,
                    onChanged: (val) {
                      setState(() {
                        _value = val!;
                      });
                      themecontroller.temaClaro();
                    },
                    title: const Text('Light Theme'),
                  ),
                  RadioListTile(
                    value: 2,
                    groupValue: _value,
                    onChanged: (val) {
                      setState(() {
                        _value = val!;
                      });
                      themecontroller.temaOscuro();
                    },
                    title: const Text('Dark Theme'),

                  ),
                  RadioListTile(
                    value: 3,
                    groupValue: _value,
                    onChanged: (val) {
                      setState(() {
                        _value = val!;
                      });
                      themecontroller.temaPersonalizado(context);
                    },
                    title: const Text('Moon Theme'),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
