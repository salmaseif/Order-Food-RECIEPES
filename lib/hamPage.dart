import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'addButton.dart';
import 'addTocart.dart';
int flag=0;
class ham extends StatefulWidget
{  @override
_hamState createState() => _hamState();
}

class _hamState extends State<ham> {
  int number=0;
  int sum=0;
  int price=30;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar:  AppBar(
        backgroundColor: Colors.amber,
        elevation: 0,
        title: Text(
          "HamBurger",
          style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w500),
        ),

      ),
      body: ListView(
        children: [

          Card(
            child: ListTile(
              onTap: (){

              },
              title: Row(
                mainAxisSize: MainAxisSize.min,

                children: [

                  Icon(Icons.shopping_cart),
                  MaterialButton(child: Text('ADD To CART', ),
                    onPressed: (){
                      setState(() {

                        Cart.addtoCart(q: number,i: 2);

                      });
                    },
                  ),


                ],
              ),

            ),
          ),
          Card(
            //color: Colors.deepOrange,

              child:
              Container(
                //alignment: AlignmentDirectional.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    button(I: Icon(Icons.add_circle_outline) ,
                        ff:() {
                          setState(() {
                            number++;

                          });

                        }),
                    button(I: Text(number.toString()),
                        ff:() {
                          setState(() {

                          });

                        }),
                    button(I: Icon(Icons.remove_circle_outline),
                        ff:() {
                          setState(() {
                            if(number!=0){
                              number--;
                            }
                          });

                        }),

                  ],),
              )

            /* Row(
                mainAxisSize: MainAxisSize.min,

                children: [
                  ListView(children: [Icon(Icons.add_circle_outline)], ),
                   Text('0'),
                  Icon(Icons.remove_circle_outline),

                ],
              ),
                */
          ),
          SizedBox(height:20 ,),
          Container(
              alignment: Alignment.bottomCenter,
              child: Image(image: AssetImage('assets/img/hamMeal.png')

              ))
        ],

      ),

    ) ;


  }
}