import 'package:aa/Screens/theme_screen.dart';
import 'package:aa/widgets/loading_modal_widget.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:social_login_buttons/social_login_buttons.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

bool isLoading = false;

  @override
  Widget build(BuildContext context) {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  
    /*String validatePassword(String value) {
    if (value.isEmpty) {
      return "* Required";
    } else if (value.length < 6) {
      return "Password should be atleast 6 characters";
    } else if (value.length > 15) {
      return "Password should not be greater than 15 characters";
    } else
      return "";
  }*/

    final txtEmail= TextFormField(
      decoration: const InputDecoration(
        labelText: 'Email',
        enabledBorder: OutlineInputBorder(),
        filled: true,
        fillColor: Color.fromARGB(137, 252, 119, 152),
        focusColor: Color.fromARGB(82, 252, 160, 183),
        ),
      style: const TextStyle(
        color: Colors.white
      ),
      validator: MultiValidator([
                      RequiredValidator(errorText: "* Required"),
                      EmailValidator(errorText: "Enter valid email id"),
                    ]));
    
    final txtPassword = TextFormField(
      obscureText: true,
      decoration:  const InputDecoration(
        label: Text('Password'),
        enabledBorder: OutlineInputBorder(),
        filled: true,
        fillColor: Color.fromARGB(137, 252, 119, 152),
        focusColor: Color.fromARGB(82, 252, 160, 183),
      ),
      style: const TextStyle(
        color: Colors.white
      ),
      validator: MultiValidator([
        RequiredValidator(errorText: "* Required"),
        MinLengthValidator(6,
          errorText: "Password should be atleast 6 characters"),
        MaxLengthValidator(15,
          errorText: "Password should not be greater than 15 characters")
    ])
  );

    const spaceHorizontal = SizedBox(height: 10,);

    final btnLogin = SocialLoginButton(
      buttonType: SocialLoginButtonType.generalLogin, 
      onPressed: (){
        if (formkey.currentState!.validate()) {
          print("Validated");
          isLoading=true;
          setState(() { });
           Future.delayed(const Duration(milliseconds: 3000)).then((value) {
            isLoading=false;
            setState(() {});
            Navigator.pushNamed(context, '/dash');
        });
        } else {
          print("Not Validated");
        }
        
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
      appBar: AppBar(
        title: const Text('Login'),
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
      resizeToAvoidBottomInset: false,
     body: Form(
      key: formkey,
       child: Stack(
         children: [
           Container(
            constraints: const BoxConstraints.expand(),
            decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/f1.jpg'),
              fit: BoxFit.cover,
              opacity: .5)
            ),
             child: Padding(
               padding: const EdgeInsets.all(15.0),
               child: Stack(
                alignment: Alignment.topCenter,
                 children: [
                   Column(
                    mainAxisAlignment: MainAxisAlignment.end,
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
                    ],),
                    Positioned(
                      top: 20,
                      child:  Image.asset('assets/l1.png',
                              height: 150,)
                               )         
                               ],
               ),
             ),
           ),
           isLoading ? const LoadingModalWidget() : Container()
         ],
       ),
     ),  
    );
  }
}