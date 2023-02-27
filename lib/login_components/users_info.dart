import 'package:flutter/material.dart';

class UsersInfo extends StatelessWidget {
  const UsersInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final txtEmail= TextFormField(
      decoration:  const InputDecoration(
        label: Text('Email User'), 
        enabledBorder: OutlineInputBorder()),
    );
    
    final txtPassword = TextFormField(
    obscureText: true,
    decoration:  const InputDecoration(
      label: Text('Password'),
      enabledBorder: OutlineInputBorder()),
    );

    const spaceHorizontal = SizedBox(height: 10,);


    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                txtEmail,
                spaceHorizontal,
                txtPassword,
                spaceHorizontal
              ],
            ),
          )
        ],
      ),
    );
  }
}