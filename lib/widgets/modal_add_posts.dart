import 'package:flutter/material.dart';

class ModalAddPost extends StatefulWidget {
  const ModalAddPost({super.key});

  @override
  State<ModalAddPost> createState() => _ModalAddPostState();
}

class _ModalAddPostState extends State<ModalAddPost> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Adding Post'),
      shape: OutlineInputBorder
      (borderRadius: BorderRadius.circular(10)),
      content: TextFormField(),
    );
  }
}