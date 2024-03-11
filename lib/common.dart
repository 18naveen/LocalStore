
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Commons {
  static Widget Product(String img,String name,String des,int cost ){
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(

        mainAxisAlignment: MainAxisAlignment.spaceBetween,
       children: [
         Padding(
           padding: const EdgeInsets.symmetric(horizontal: 30.0),
           child: CircleAvatar(
             radius: 66,
             backgroundImage:  AssetImage(img),
           ),
         ),
         Expanded(
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                   Text(name,style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                   Text("Rs $cost",style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.green),)
                 ],
               ),
               Container(
                 padding: EdgeInsets.all(10),
                 decoration: BoxDecoration(
                     border: Border.all(

                       color: Colors.grey
                     ),
                   borderRadius: BorderRadius.circular(10)
                 ),
                 child: Column(
                   children: [
                     Icon(Icons.add),
                     Padding(
                       padding: const EdgeInsets.symmetric(vertical: 5),
                       child: Text("2"),
                     ),
                     Icon(Icons.exposure_minus_1_outlined),
                   ],
                 ),
               )
             ],
           ),
         ),
       ],
      ),
    );
  }
}