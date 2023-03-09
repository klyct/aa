import 'package:aa/model/post_model.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ItemPostWidget extends StatelessWidget {
   ItemPostWidget({super.key,this.postModel});
  PostModel? postModel;

  @override
  Widget build(BuildContext context) {

    const iconMore = Icon(
      Icons.more_horiz, 
      size: 35,);

    final carddesc = Container(
      color: const Color.fromARGB(255, 248, 138, 175),
      height: 140,
    );

    final rowFooter = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,     
      children: const [
        Text('Date: ', style: TextStyle(fontSize: 16),),
        Icon(Icons.thumb_up)
      ],
    );

    final ribbonTop = ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(10),
        topRight: Radius.circular(10)),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        alignment: Alignment.centerRight,
          height: 30,
          width: double.infinity,
          color: const Color.fromARGB(255, 255, 156, 189),
          child: iconMore,
        ),
    );

     final ribbonBottom = ClipRRect(
      borderRadius: const BorderRadius.only(
        bottomLeft: Radius.circular(10),
        bottomRight: Radius.circular(10)
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        alignment: Alignment.centerRight,
          height: 30,
          width: double.infinity,
          color: const Color.fromARGB(255, 255, 156, 189),
          child: rowFooter,
        ),
    ); 

    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        height: 200,
        decoration:  BoxDecoration(
          boxShadow:const [
            BoxShadow(
               offset: Offset(3, 5),
               blurRadius: 7,
               color: Colors.grey
            )
          ] ,
          color: const Color.fromARGB(255, 248, 138, 175) ,
          borderRadius:BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            ribbonTop,
            carddesc,
            //const Divider(thickness: 2,),
            ribbonBottom,
          ],
        ),
      ),
    );
  }
}