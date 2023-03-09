import 'package:aa/database/database_helper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/flags_provider.dart';

class ModalAddPost extends StatefulWidget {
  const ModalAddPost({super.key});

  @override
  State<ModalAddPost> createState() => _ModalAddPostState();
}

class _ModalAddPostState extends State<ModalAddPost> {

  DataBaseHelper?database;

  TextEditingController txtDescPost = TextEditingController();
  
  @override
  void initState(){
    super.initState();
    database = DataBaseHelper();
  }

  @override
  Widget build(BuildContext context) {
    FlagsProvider flags = Provider.of<FlagsProvider>(context);
    return AlertDialog(
      title: const Text('Adding Post'),
      content: SizedBox(
        height: 150,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextFormField(
              maxLines: 5,
              controller: txtDescPost,
            ),
            IconButton(onPressed: () {
              database!.Insertar('tblPost', {
                'dscPost': txtDescPost.text,
                'datePost':DateTime.now().toString(),
              }).then((value){
                var msg = value >0?'insertado':'error';
                final snackBar = SnackBar(content: Text(msg));
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
                flags.setupdateposts();
              });
            }, icon: const Icon(Icons.add))
          ],
        ),
      ),
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10)
      ),
    );
  }
}