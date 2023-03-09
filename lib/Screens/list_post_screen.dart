import 'package:aa/database/database_helper.dart';
//import 'package:aa/provider/flags_provider.dart';
import 'package:flutter/material.dart';
//import 'package:provider/provider.dart';

import '../model/post_model.dart';
import '../widgets/item_post_widget.dart';

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

    var futPost = helper!.GETALLPOST();
    

    return FutureBuilder(
      future: futPost,
      builder: (context, AsyncSnapshot<List<PostModel>> snapshot) {
        if(snapshot.hasData){
          return ListView.builder(
            itemCount: snapshot.data!.length,
            itemBuilder: (context, index) {
              var objPostModel= snapshot.data![index];
              return ItemPostWidget(postModel: objPostModel);
            },
          );
        } else if (snapshot.hasError){
          return  const Center(child: Text('Chale mano no te funciono'),);
        } else {
          return  const Center(child: CircularProgressIndicator(),);
        }
      },
    );
  }
}