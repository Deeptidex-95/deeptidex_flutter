

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'listview_example.dart';

class Button_Files extends StatefulWidget {
  @override
  _Button_FilesState createState() => _Button_FilesState();
}

class _Button_FilesState extends State<Button_Files> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(

           title: Text('Buttons'),

        ),
        body: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              Container(
                  width:double.infinity ,
                  padding: EdgeInsets.all(20),
                  alignment: Alignment.topCenter,
                  // ignore: deprecated_member_use
                  child:OutlineButton(
                    child:Text(" Flat Button"),
                    onPressed: () {},
                  )
              ),
              Container(
                  width:double.infinity ,
                  padding: EdgeInsets.all(20),
                  alignment: Alignment.topCenter,
                  // ignore: deprecated_member_use
                  child:RaisedButton(
                    child:Text("Raised  Button"),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ListViewExample ()),
                      );

                    },
                  )
              ),
              Container(
                  width:double.infinity ,
                  padding: EdgeInsets.all(20),
                  alignment: Alignment.topCenter,
                  // ignore: deprecated_member_use
                  child:OutlineButton(
                    child:Text("Flat Outline Button"),
                    onPressed: () {},
                  )
              ),
              Container(
                  width:double.infinity ,
                  padding: EdgeInsets.all(20),
                  alignment: Alignment.topCenter,
                  child:TextButton(
                    child: Text("Text Button"),
                    onPressed:() {

                    },
                  )
              ),
              Container(
                  width:double.infinity ,
                  padding: EdgeInsets.all(20),
                  alignment: Alignment.topCenter,
                  child:ElevatedButton(
                    child: Text("Elevated Button"),
                    onPressed:() {

                    },
                  )
              ),
           FloatingActionButton(
            child: Icon(Icons.save),
            backgroundColor: Colors.deepPurple,
            foregroundColor: Colors.white,
            onPressed: () {
              setState(() {

              });
            },
          ),
              Container(
                padding: EdgeInsets.all(20),
                alignment: Alignment.center,
                height: 50,
                child:IconButton(
                  icon: Icon(Icons.play_arrow),
                  onPressed: () {

                  },
                ),
              ),



        ]
            ),
        ),


          ) ,


    );
  }
}
