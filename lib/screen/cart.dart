

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:localstore/common.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    Size Sz=MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Your basket"),
        centerTitle: true,
        flexibleSpace: Icon(Icons.filter_alt_sharp,color: Colors.grey,),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemBuilder: (context,index)=>Commons.Product(
                    "assets/pic3.jpeg", "name", "des",33
                ),),
          ),
          Container(
            // height:Sz.width*0.5,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [
                      Text("Sub Total",style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                      Text("Rs 23",style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.green),)

                    ],),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [
                      Text("Delivery",style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                      Text("Rs 113",style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.green),)

                    ],),
                ),
                Divider(),

                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child:
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                      children: [
                        Text("Total receviable:",style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),
                        Text("Rs 223",style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.green),)

                      ],),
                                    
                  ),
                )
              ],
            ),
          )        
          
        ],
      ),

    );
  }
}
