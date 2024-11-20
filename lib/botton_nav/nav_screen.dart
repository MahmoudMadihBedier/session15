import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class NavScreen extends StatelessWidget {



   @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Scaffold(
    appBar: AppBar(
      centerTitle: true,
      title: Text("nav bar"),
      backgroundColor: Colors.blue
          ),
    body: Container(
     
      height: double.infinity ,
      width: double.infinity  ,
      color: Colors.blue,

    ),

    bottomNavigationBar: CurvedNavigationBar(
      animationDuration: Duration(milliseconds: 200),
      index: 2,
      onTap: (index){

      },
      backgroundColor: Colors.blue,
      
      items: [
        Icon(Icons.home),
        Icon(Icons.person),
        Icon(Icons.settings), 
      ]),
   );
  }
}
