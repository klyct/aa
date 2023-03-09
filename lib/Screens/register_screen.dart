import 'dart:io';

import 'package:aa/Screens/dashboard_screen.dart';
import 'package:aa/Screens/select_photo_options_screen.dart';
import 'package:aa/Screens/theme_screen.dart';
import 'package:aa/widgets/common_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:image_picker/image_picker.dart';

class RegiterFormScreen extends StatefulWidget {
  const RegiterFormScreen({super.key});
  static const id = 'set_photo_screen';

  @override
   // ignore: library_private_types_in_public_api
   _RegiterFormScreenState createState() => _RegiterFormScreenState();
}

const spaceHorizontal = SizedBox(height: 10,);

class _RegiterFormScreenState extends State<RegiterFormScreen> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  String validatePassword(String value) {
    if (value.isEmpty) {
      return "* Required";
    } else if (value.length < 6) {
      return "Password should be atleast 6 characters";
    } else if (value.length > 15) {
      return "Password should not be greater than 15 characters";
    } else {
      return "";
    }
  }

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
                    
  final txtRPassword = TextFormField(
      obscureText: true,
      decoration:  const InputDecoration(
        label: Text('Create Password'),
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

  final txtRUName = TextFormField(
      decoration:  const InputDecoration(
        label: Text('User Name'), 
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
        MinLengthValidator(4,
          errorText: "User Name should be atleast 4 characters"),
       ])
    );

    File? _image;

  Future _pickImage(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: source);
      if (image == null) return;
      File? img = File(image.path);

      setState(() {
        _image = img;
        Navigator.of(context).pop();
      });
    } on PlatformException catch (e) {
      print(e);
      Navigator.of(context).pop();
    }
  }

  void _showSelectPhotoOptions(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(25.0),
        ),
      ),
      builder: (context) => DraggableScrollableSheet(
          initialChildSize: 0.28,
          maxChildSize: 0.4,
          minChildSize: 0.28,
          expand: false,
          builder: (context, scrollController) {
            return SingleChildScrollView(
              controller: scrollController,
              child: SelectPhotoOptionsScreen(
                onTap: _pickImage,
              ),
            );
          }),
    );
  }
   
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text("Sing up"),
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
  ],
      ),
      body: SingleChildScrollView(
        
        child: Form(

          key: formkey,
          //autovalidate: true,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const  EdgeInsets.only
                (left: 20, 
                right: 20, 
                bottom: 5, 
                top: 10),
                  child: Center(
                    child: GestureDetector(
                    behavior: HitTestBehavior.translucent,
                    onTap: () {
                      _showSelectPhotoOptions(context);
                    },
                    child: Center(
                      child: Container(
                          height: 150.0,
                          width: 100.0,
                          // ignore: prefer_const_constructors
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: const Color.fromARGB(172, 255, 206, 240),
                          ),
                          child: Center(
                            child: _image == null
                                ? const Text(
                                    'Clik to select photo',
                                    style: TextStyle(fontSize: 16),
                                    textAlign: TextAlign.center,
                                  )
                                : CircleAvatar(
                                    backgroundImage: FileImage(_image!),
                                    radius: 250.0,
                                  ),
                          )
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 15, bottom: 0),
                child: txtRUName
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 15, bottom: 0),
                child: txtEmail
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 15, bottom: 0),
                child: txtRPassword
              ),
              spaceHorizontal,
              Center( child:
               SizedBox(
                height:200,
                width: 250,
                child: Column( 
                  children:[
                    CommonButtons(
                    onTap: () => _showSelectPhotoOptions(context),
                    backgroundColor: const Color.fromARGB(172, 240, 56, 185),
                    textColor: Colors.white,
                    textLabel: 'Select photo',
                  ),
                  spaceHorizontal, 
                    CommonButtons(
                  backgroundColor: const Color.fromARGB(172, 240, 56, 185),
                  textColor: Colors.white,
                  textLabel: 'Sign Up',
                  onTap: () {
                    if (formkey.currentState!.validate()) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => const DashboardScreen()));
                      print("Validated");
                    } else {
                      print("Not Validated");
                    }
                  },
                ),
            ]),)
              )
            ],
          ),
        ),
      ),
    );
  }
}