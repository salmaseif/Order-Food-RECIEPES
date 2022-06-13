import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:order/recipePage.dart';

import 'homePage.dart';
var email= TextEditingController();
var pass= TextEditingController();
var inn =  TextEditingController();
bool check= true;
class  login extends StatefulWidget
{
  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return  Scaffold(

        appBar: AppBar(
        backgroundColor: Colors.amber,
        elevation: 0,
        title: Text(
        "LOGIN",
        style: TextStyle(
        color: Colors.white,
        fontSize: 16,
        fontWeight: FontWeight.w500),
    ),
    brightness: Brightness.light,),

        body:
        Column(
      children: [
        SizedBox(height:150 ,),
        TextFormField(

          controller: email,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
              labelText: 'Email Address',
              hintText: 'enter email addresse',
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.email_outlined),


          ),
        ),
        SizedBox(height:20 ,),

        TextFormField(
          controller: pass,
          obscureText: check,
          keyboardType: TextInputType.visiblePassword,

          decoration: InputDecoration(
              labelText: 'Password',
              hintText: 'enter passward',
              border: OutlineInputBorder(),
              suffixIcon: IconButton(
                icon: Icon(Icons.remove_red_eye_rounded),
                onPressed: (){
                  setState(() {
                    check=!check;
                  });
                },
              ),
              prefixIcon: Icon(Icons.password_outlined)
          ),
        ),
        SizedBox(height:10 ,),
        MaterialButton(
            color: Colors.amber,
            onPressed: (){
              if(email.text=='salma'&&pass.text=='1234') {
                inn.clear();
                setState(() {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (v) {
                        return foodList();
                      }
                      )

                  );
                }

                );
              }
              else
               inn.text='WRONG PASSWORD OR EMAIL';
            },
            child:
            Row(
              mainAxisSize: MainAxisSize.min,

              children: [
                Text('login', ),
                Icon(Icons.login),

              ],
            )

        ),
        TextFormField(controller: inn,)
      ],
    )
    );




  }
}