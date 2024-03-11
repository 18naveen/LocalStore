
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}
class _HomeState extends State<Home> {
  int indx=0;


  Widget tile1(context,String img,String name,String dis,String cost,int strs){
    Size Sx =MediaQuery.of(context).size;
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              fit: BoxFit.fill,
              img,
              height:Sx.width*0.30 ,
              width: Sx.width*0.30,
            ),
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(name,style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              Text(dis,style: const TextStyle(fontWeight: FontWeight.w300,fontSize:17,color: Colors.grey),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Rs $cost",style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.green),),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: RatingBar.builder(
              itemSize: 19,
              initialRating: 3,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemPadding: const EdgeInsets.symmetric(horizontal: 1.0),
              itemBuilder: (context, _) => const Icon(
                Icons.star,
                color: Colors.green,
              ),
              onRatingUpdate: (rating) {
                print(rating);
              },
            ),
          )
                ],
              )
            ],
          ),
        )
        
      ],
    );
  }

  @override
  Widget build(BuildContext context) {

    return
      DefaultTabController(length: 2, child:
      SafeArea(
        child: Scaffold(

          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

        appBar: AppBar(
          toolbarHeight: 80,
          leading: Icon(Icons.adb_outlined,color: Colors.green,size: 40,),
          centerTitle: true,
          title:  Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            width: 400,

            decoration: BoxDecoration(color: Colors.white,
            borderRadius: BorderRadius.circular(10),

            border: Border.all(color: Colors.green,width: 2)
            ),
            height: 70,
            child: const Row(
              children: [
                Expanded(
                  child: TextField(
                    selectionHeightStyle: BoxHeightStyle.tight,
                       // cursorHeight: 5,
                       decoration: InputDecoration(

                           border: InputBorder.none,
                           hintText: "Search what ?"),

                  ),
                ),
                Icon(Icons.search),
              ],
            ),
          ),
        bottom: TabBar(
          tabs: [
         Tab(
           child: Container(
                    decoration:  BoxDecoration(
                   color: Colors.green,
               borderRadius: BorderRadius.circular(10)
             ),
             padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 10),
             child: const Text("Newest",style: TextStyle(color: Colors.white),),
           ),
         ),    Tab(
              child: Container(

                decoration:  BoxDecoration(

                   color: Colors.green,
                    borderRadius: BorderRadius.circular(10)
                ),
                padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 10),

                child: const Text("Collecton",style: TextStyle(color: Colors.white),),
              ),
            )

        ],),
        ),

            body: TabBarView(
          children: [
            ListView.builder(
            itemBuilder: (context,i)=>tile1(
                context,
                "assets/pic2.jpeg",
                "Bracccoli ${i.toString()}",
        "Product info goes to here",
              "25.00",
              3
        )   ),

            ListView.builder(
                itemBuilder: (context,i)=>tile1(
                    context,
                    "assets/pic1.jpeg",
                    "Tomato ${i.toString()}",
                    "Product info goes to here",
                    "25.00",
                    3
                )   ),


          ],

        )
            ),
      ));
  }
}


/*  Column(children: [
            ListView(children: [


            ],),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                Text("Sub Total"),
                Text("Rs 120.00"),

              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Sub Total"),
                Text("Rs 120.00"),

              ],
            ),

            Divider(),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                Text("Sub Total"),
                Text("Rs 120.00"),

              ],
            ),


          ],)*/