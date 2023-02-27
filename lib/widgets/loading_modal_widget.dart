import 'package:flutter/material.dart';
class LoadingModalWidget extends StatelessWidget {
  const LoadingModalWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(157, 158, 91, 91),
      child: Center(
        child: Image.asset('assets/loading.webp'),
      ),
    );
  }
}