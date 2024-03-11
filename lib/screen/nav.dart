


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:localstore/screen/Map.dart';
import 'package:localstore/screen/Profile.dart';
import 'package:localstore/screen/Search.dart';
import 'package:localstore/screen/cart.dart';
import 'package:localstore/screen/home.dart';

class NavScreen extends StatefulWidget {
  const NavScreen({super.key});

  @override
  State<NavScreen> createState() => _NAvScreenState();
}

class _NAvScreenState extends State<NavScreen> {
  int currentpage=0;
  PageController pC=PageController();

  Widget NavItem(int pgno,IconData icon){
    return InkWell(
      onTap: ()=>setState(() {
        currentpage=pgno;
        pC.jumpToPage(pgno);
      }),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Icon(
          icon
          ,color: pgno==currentpage? Colors.black:Colors.grey,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      floatingActionButton: InkWell(
        child: CircleAvatar(
          radius: 24,
          backgroundColor:Colors.green ,
          foregroundColor:Colors.white ,
          child: Icon(Icons.shopping_cart_outlined),),
        onTap: () {

        },


      ),
      body: PageView(
        physics: NeverScrollableScrollPhysics(),

        children: [
          // MapScreen(),
         Cart(),
          Home(),
          SearchScreen(),
          Profile()
        ],
        controller:pC,
      ),
      bottomNavigationBar:
      Container(

          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey,width: 2),
              borderRadius: BorderRadius.only(topLeft: Radius.circular(12),topRight:Radius.circular(12) )),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              NavItem(0, Icons.home),
              NavItem(1, Icons.map_outlined),
              SizedBox(width: 11,),
              NavItem(2, Icons.search),
              NavItem(3, Icons.account_circle_outlined),

            ],)),


    );
  }
}
