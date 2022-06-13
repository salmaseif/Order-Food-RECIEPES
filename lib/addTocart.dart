import 'package:flutter/cupertino.dart';
import 'package:order/data.dart';

class Cart
{


  static void addtoCart({ int q = 0,int i}) {
    cart[i]['quantity']+=q;
    cart[i]['total']+=cart[i]['price']* cart[i]['quantity'];

  }
}