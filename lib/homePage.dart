
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:order/friesPage.dart';
import 'package:order/hamPage.dart';
import 'package:order/pastaPage.dart';
import 'package:order/pizzaPage.dart';
import 'package:order/recipePage.dart';

import 'cartPage.dart';
import 'login.dart';

class foodList extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Scaffold(
     resizeToAvoidBottomInset: false,
     extendBodyBehindAppBar: true,
     drawer: Drawer(
       child: ListView(
         children: [

           UserAccountsDrawerHeader(
             decoration: BoxDecoration(
               color: Colors.amber,
             ),
             arrowColor: Colors.amber,
             accountName: Text('salma seif'
             ,style: TextStyle(color: Colors.black),),
             accountEmail: Text('salma1234@gmail'
                 ,style: TextStyle(color: Colors.black)),
             currentAccountPicture: CircleAvatar(
               //backgroundImage:Image.asset('assets/img/user.png') ,
               child: Image(image: AssetImage('assets/img/girl.png')
               ),
             ),

           ),

           Card(
             color: Colors.amber,
             child: ListTile(

               hoverColor: Colors.lightGreen,
               title: Text('My Cart'),

               leading: Icon(Icons.login),
               onTap: (){
                 Navigator.of(context).push(
                     MaterialPageRoute(builder: (v){
                       return CartPage();
                     }
                     )

                 );
               },

             ),
           ),
           Card(
             color: Colors.amber,
             child: ListTile(

               hoverColor: Colors.lightGreen,
               title: Text('Recipes'),

               leading: Icon(Icons.login),
               onTap: (){
                 Navigator.of(context).push(
                     MaterialPageRoute(builder: (v){
                       return recipe();
                     }
                     )

                 );
               },

             ),
           ),
           Card(
             color: Colors.amber,
             child: ListTile(

               hoverColor: Colors.lightGreen,
               title: Text('logout'),

               leading: Icon(Icons.logout),
               onTap: (){
               email.clear();
                 pass.clear();
                 Navigator.of(context).push(
                     MaterialPageRoute(builder: (v){
                       return login();
                     }
                     )

                 );

               },

             ),
           ),
           Card(
             color: Colors.amber,
             child: ListTile(

               hoverColor: Colors.lightGreen,
               title: Text('INFO'),

               leading: Icon(Icons.info_outline),
               onTap: (){
                 email.clear();
                 pass.clear();
               },

             ),
           ),


         ],
       ),
     ),

     appBar: AppBar(
       backgroundColor: Colors.amber,
       elevation: 0,
       title: Text(
         "What would you like to eat?",
         style: TextStyle(
             color: Colors.white,
             fontSize: 16,
             fontWeight: FontWeight.w500),
       ),
       brightness: Brightness.light,
       actions: <Widget>[
         IconButton(
             icon: Icon(
               Icons.shopping_cart,

             ),

            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (v){
                    return CartPage();
                  }
                  )

              );
             })
  ],
   ),
     body:
     Padding(
       padding: const EdgeInsets.all(8.0),
       child: ListView(
         children: [


           Card(
             child: Container(
               decoration: BoxDecoration(
                 image: DecorationImage(
                   image: AssetImage("assets/img/pasta.png"),
                   fit: BoxFit.fitWidth,
                   alignment: Alignment.center,
                 ),
               ),
               child:
               ListTile(
                 tileColor: Colors.red,
                 leading: Container(
                     alignment: Alignment.bottomLeft,
                     height: 80,
                     width: 90,
                     color: Colors.amber,
                     child: Container(
                       alignment: Alignment.center,
                       child: Text('PASTA',style: TextStyle(fontSize: 15,fontWeight: FontWeight. bold),),)
                 ),
                 trailing: Text('40 LE',style: TextStyle(fontSize: 15,fontWeight: FontWeight. bold),),
                 minVerticalPadding: 15,
                 onTap: (){

                   Navigator.of(context).push(
                       MaterialPageRoute(builder: (v){
                         return pasta();
                       })

                   );

                 },


               ),
             ),
           ),

           Card(
             child: Container(
               decoration: BoxDecoration(
                 image: DecorationImage(
                   image: AssetImage("assets/img/pizza1.png"),
                   fit: BoxFit.fitWidth,
                   alignment: Alignment.center,
                 ),
               ),
               child:
               ListTile(
                 tileColor: Colors.red,
                 leading: Container(
                     alignment: Alignment.bottomLeft,
                     height: 80,
                     width: 90,
                     color: Colors.amber,
                     child: Container(
                       alignment: Alignment.center,
                       child: Text('PIZZA',style: TextStyle(fontSize: 15,fontWeight: FontWeight. bold),),)
                 ),
                 trailing: Text('70 LE',style: TextStyle(fontSize: 15,fontWeight: FontWeight. bold),),
                 minVerticalPadding: 15,
                 onTap: (){

                   Navigator.of(context).push(
                       MaterialPageRoute(builder: (v){
                         return pizza();
                       })

                   );

                 },


               ),
             ),
           ),


             Card(
               child: Container(
                 decoration: BoxDecoration(
                   image: DecorationImage(
                     image: AssetImage("assets/img/hamMeal.png"),
                     fit: BoxFit.fitWidth,
                     alignment: Alignment.center,
                   ),
                 ),
                 child:
                 ListTile(
                   tileColor: Colors.red,
                 leading: Container(
                   alignment: Alignment.bottomLeft,
                   height: 80,
                   width: 90,
                   color: Colors.amber,
                     child: Container(
                       alignment: Alignment.center,
                         child: Text('Hamburger',style: TextStyle(fontSize: 15,fontWeight: FontWeight. bold),),)
                 ),
                 trailing: Text('60 LE',style: TextStyle(fontSize: 15,fontWeight: FontWeight. bold),),
                 minVerticalPadding: 15,
                 onTap: (){

                   Navigator.of(context).push(
                       MaterialPageRoute(builder: (v){
                         return ham();
                       })

                   );

                 },


               ),
               ),
             ),
           Card(
             child: Container(
               decoration: BoxDecoration(
                 image: DecorationImage(
                   image: AssetImage("assets/img/fries.png"),
                   fit: BoxFit.fitWidth,
                   alignment: Alignment.center,
                 ),
               ),
               child:
               ListTile(
                 tileColor: Colors.red,
                 leading: Container(
                     alignment: Alignment.bottomLeft,
                     height: 80,
                     width: 90,
                     color: Colors.amber,
                     child: Container(
                       alignment: Alignment.center,
                       child: Text('Fries',style: TextStyle(fontSize: 15,fontWeight: FontWeight. bold),),)
                 ),
                 trailing: Text('20 LE',style: TextStyle(fontSize: 15,fontWeight: FontWeight. bold),),
                 minVerticalPadding: 15,
                 onTap: (){

                   Navigator.of(context).push(
                       MaterialPageRoute(builder: (v){
                         return fries();
                       })

                   );

                 },


               ),
             ),
           ),

         ],
       ),
     ),
    );




}



}