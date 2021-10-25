

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Example extends StatefulWidget {
  @override
  _ExampleState createState() => _ExampleState();
}

class _ExampleState extends State<Example> {


  @override
  Widget build(BuildContext context) {
    FocusNode nodeOne = FocusNode();
    FocusNode nodeTwo = FocusNode();
    /*double  screenHeight = MediaQuery.of(context).size.height ;
    double screenWidth = MediaQuery.of(context).size.width;
    double statusBarHeight = MediaQuery.of(context).padding.top;*/
    final _controller1 = TextEditingController();
    final _controller2 = TextEditingController();



    return  Scaffold(
      body: Stack(
        children: [
          Form(
            child: Padding(
              padding: EdgeInsets.all(12),
              child: ListView(
                children:[
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xFF5D3F30).withOpacity(0.1),),
                        borderRadius: BorderRadius.circular(46.0)
                    ),

                    //  height:screenHeight  - 389,
                    child: TextField(
                      focusNode: nodeOne,
                      keyboardType: TextInputType.emailAddress,
                      controller: _controller1,
                      cursorColor: Colors.greenAccent,
                      decoration: InputDecoration(
                          hintText: "Email",

                          border: OutlineInputBorder(

                              borderRadius:BorderRadius.circular(46.0)
                          )
                      ),
                      onChanged: (val) {
                        val =  _controller1.text.toString();
                      },
                    ),
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                  Container(
                    decoration: BoxDecoration(

                        border: Border.all(width: 0.0/*color: Color(0xFF5D3F30).withOpacity(0.1)*/),
                        borderRadius: BorderRadius.circular(46.0)
                    ),
                    //  height:screenHeight  - 389,
                    child: TextField(

                      focusNode: nodeTwo,
                      keyboardType: TextInputType.visiblePassword,
                      controller:  _controller2,
                      cursorColor: Colors.greenAccent,
                      decoration: InputDecoration(
                          hintText: "Password",
                          border: OutlineInputBorder(
                              borderRadius:BorderRadius.circular(46.0)
                          )
                      ),
                      onChanged: (val) {
                        val = _controller2.text.toString();
                      },
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  RichText(text: TextSpan(text:'By Signing up , you agree to our  ',
                      style: TextStyle(
                        color: Colors.black54,
                      ),
                      children: <TextSpan>[
                        TextSpan(text: 'Terms',
                            style: TextStyle(
                                color: Colors.black54,


                                decoration: TextDecoration.underline),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                // open desired screen
                              }),
                        TextSpan(text :'and', style: TextStyle(
                          color: Colors.black54,
                        ),),
                        TextSpan(text: 'Privacy Policy',
                            style: TextStyle(
                                color: Colors.black54,

                                decoration: TextDecoration.underline),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                // open desired screen
                              }),

                      ])),
                  Padding(
                    padding: const EdgeInsets.only(left: 5.0,right: 5.0,top:15.0),
                    child: ElevatedButton(

                      style: ElevatedButton.styleFrom(
                          shape:  RoundedRectangleBorder(borderRadius:BorderRadius.circular(46.0) ),

                          primary: Color(0xFF74D6B8),

                          minimumSize: Size(double.infinity, double.infinity) ), onPressed: () {
                      FocusScope.of(context).requestFocus(nodeTwo);
                    },
                      child: Text("Next",style: TextStyle(color: Colors.white70),),
                      /*onPressed:() {
                       *//* Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Demo(),
                    ));*//*
                      },*/
                    ),
                  ),
                ]

              ),
            ),
          )
        ],
      ),
    );
  }

  data(BuildContext context) {

  }
}
