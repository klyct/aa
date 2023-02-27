import 'package:aa/database/database_helper.dart';
import 'package:flutter/material.dart';

import '../model/post_model.dart';
/*
class ListPostScreen extends StatefulWidget {
  const ListPostScreen({super.key});

  @override
  State<ListPostScreen> createState() => _ListPostScreenState();
}

class _ListPostScreenState extends State<ListPostScreen> {
  
  DataBaseHelper? helper ;

  @override
  void initState(){
    super.initState();
    helper=DataBaseHelper();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: helper!.GETALLPOST(),
      builder: (context, AsyncSnapshot<List<PostModel>> snapshot) {
        if(snapshot.hasData){
          return ListView.builder(
            itemCount: snapshot.data!.length,
            itemBuilder: (context, index) {
              var objPostModel= snapshot.data![index];
              return Widget;
            },
          );
        } else if (snapshot.hasError){
          return Center(child: Text('Chale mano no te funciono'),);
        }else {
          return Center(child: CircularProgressIndicator(),);
        }
      },
    );
  }
}*/