import 'package:aa/Screens/login_responsive_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../onboarding_components/onboarding_content.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  int currentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient:  RadialGradient(colors: [
             Color.fromARGB(172, 240, 56, 185),
             Color.fromARGB(172, 255, 206, 240),
            ])
        ),
          child: Center(
            child: Column(
              children: [
                Expanded(
                  child: PageView.builder(
                    controller: _controller,
                    itemCount: contents.length,
                    onPageChanged: (int index) {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                    itemBuilder: (_, i) {
                      return SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.all(40),
                          child: Column(
                            children: [
                              Image.asset(contents[i].image),
                              Text(
                                contents[i].text,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 45,
                                ),
                              ),
                              const SizedBox(height: 20),
                              Text(
                                contents[i].descripcion,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 35,
                                ),
                                textAlign: TextAlign.justify,
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                        contents.length, (index) => buildPage(index, context))),
                Container(
                  height: 60,
                  width: double.infinity,
                  margin: const EdgeInsets.all(40),
                  child: MaterialButton(
                    onPressed: () async {
                      if (currentIndex == contents.length - 1) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => const LoginResponsiveScreen()),
                        );
                      }
                      _controller.nextPage(
                        duration: const Duration(seconds: 1),
                        curve: Curves.easeInOut,
                      );
                    },
                    color: const Color.fromARGB(172, 240, 56, 185),
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(width: 1, color: Colors.white),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      currentIndex == contents.length - 1
                          ? "Continuar"
                          : "Siguiente",
                      style: const TextStyle(fontSize: 18),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      );
  }

  Container buildPage(int index, BuildContext context) {
    return Container(
      height: 10,
      width: currentIndex == index ? 20 : 10,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color:
            currentIndex == index ? const Color.fromARGB(172, 240, 56, 185) : const Color.fromARGB(172, 255, 206, 240),
      ),
    );
  }
}