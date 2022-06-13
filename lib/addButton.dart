import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget button({Widget I,int number,Function ff}) {
  return MaterialButton(
    color: Colors.white,
    child: Card(
      //color: Colors.deepOrange,

      child: I,



    ),
    onPressed: ff
    //onPressed: ff,

    /* Row(
                mainAxisSize: MainAxisSize.min,

                children: [
                  ListView(children: [Icon(Icons.add_circle_outline)], ),
                   Text('0'),
                  Icon(Icons.remove_circle_outline),

                ],
              ),
                */
  );
}


