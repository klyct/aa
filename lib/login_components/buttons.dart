import 'package:aa/widgets/loading_modal_widget.dart';
import 'package:flutter/material.dart';
import 'package:social_login_buttons/social_login_buttons.dart';

class ButtonsLogin extends StatefulWidget {
  const ButtonsLogin({super.key});

  @override
  State<ButtonsLogin> createState() => _ButtonsLoginState();
}

class _ButtonsLoginState extends State<ButtonsLogin> {
  bool isLoading = false;
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

    final btnLogin = SocialLoginButton(
      buttonType: SocialLoginButtonType.generalLogin, 
      onPressed: (){
        isLoading=true;
        setState(() {
          
        });
        Future.delayed(const Duration(milliseconds: 3000)).then((value) {
          isLoading=false;
          setState(() {
            
          });
          Navigator.pushNamed(context, '/dash');
        });
       // showLoadingModal(context);
      } );

    final btnGoogle = SocialLoginButton(
      buttonType: SocialLoginButtonType.google, 
      onPressed: (){});

    final btnFacebook = SocialLoginButton(
      buttonType: SocialLoginButtonType.facebook, 
      onPressed: (){});  

    final txtRegister  = Padding(
      padding: const EdgeInsets.all(20.0),
      child: TextButton (
        onPressed: (){
          Navigator.pushNamed(context, '/Reg'); 
        }, 
        child: const Text('Registrate', 
         style: TextStyle(
          decoration: TextDecoration.underline,
         fontSize: 15)
        )
        ),
    );

    
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
                spaceHorizontal,
                btnLogin,
                spaceHorizontal,
                const Text('or'),
                spaceHorizontal,
                btnGoogle,
                spaceHorizontal,
                btnFacebook,
                spaceHorizontal,
                txtRegister
              ],
            ),
          ),
          isLoading ? const LoadingModalWidget() : Container()
        ],
      ),
    );
  }
}