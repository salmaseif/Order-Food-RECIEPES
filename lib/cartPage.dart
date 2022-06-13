import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:order/data.dart';
class CartPage extends StatelessWidget
{
  int tot=cart[0]['total']+cart[1]['total']+cart[2]['total']+cart[3]['total'];
  @override
  Widget build(BuildContext context) {
return Scaffold(
  appBar: AppBar(

    backgroundColor: Colors.amber,
    elevation: 0,
    title: Text(
      "Cart ",
      style: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.w500),
    ),



  ),

  body:

  ListView(
    children: [
     // for(int i=0;i<cart.length;i++)

        if(cart[1]['quantity']!=0)

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
                        child: Text('PASTA',
                          style: TextStyle(fontSize: 15, fontWeight: FontWeight
                              .bold),),)
                  ),
                  trailing: Text('40 LE', style: TextStyle(
                      fontSize: 15, fontWeight: FontWeight.bold),),
                  minVerticalPadding: 15,


                ),
              ),
            ),
      if(cart[1]['quantity']!=0)

            ListTile(
              leading: Text('ITEMS  :' + cart[1]['quantity'].toString()),
              trailing: Text('COST  :' +
                  (cart[1]['quantity'] * cart[1]['price']).toString()),
            ),


      if(cart[0]['quantity']!=0)
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



                 ),
               ),
             ),
      if(cart[0]['quantity']!=0)
      ListTile(
        leading: Text('ITEMS  :'+cart[0]['quantity'].toString()),
        trailing: Text('COST  :'+(cart[0]['quantity']*cart[0]['price']).toString()),
      ),
      if(cart[2]['quantity']!=0)
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



                 ),
               ),
             ),
      if(cart[2]['quantity']!=0)
      ListTile(
        leading: Text('ITEMS  :'+cart[2]['quantity'].toString()),
        trailing: Text('COST  :'+(cart[2]['quantity']*cart[2]['price']).toString()),
      ),
      if(cart[3]['quantity']!=0)
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



            ),
          ),
        ),
      if(cart[3]['quantity']!=0)
        ListTile(
          leading: Text('ITEMS  :'+cart[3]['quantity'].toString()),
          trailing: Text('COST  :'+(cart[3]['quantity']*cart[3]['price']).toString()),
        ),
      Card(
        child: Container(
          //foregroundDecoration: InputDecoration(),
          color: Colors.amber,
          child: Card(
            shadowColor: Colors.amber,
            borderOnForeground: true,
            color: Colors.amber,
            child:
            Text('TOTAL PRICE     '+   tot.toString()      +   '    LE'
              ,style: TextStyle(color: Colors.white),
            ) ,
          ),
        ),
      )
           ],

          ),




     // SizedBox(height:20 ,),
    /*
      Card(
        child: Container(
           //foregroundDecoration: InputDecoration(),
          color: Colors.amber,
          child: Card(
            shadowColor: Colors.amber,
            borderOnForeground: true,
            color: Colors.amber,
            child:
            Text('TOTAL PRICE     '+   tot.toString()      +   '    LE'
            ,style: TextStyle(color: Colors.white),
            ) ,
          ),
        ),
      )

     */



);

  }
}