

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  String takedata;
  SecondPage(this.takedata);
  @override
  State<StatefulWidget> createState() {
    return SecondPageState(this.takedata);
  }
}
class SecondPageState extends State<SecondPage> {
  String takedata;
  SecondPageState(this.takedata);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black12,
        title: Text('SecondPage'),),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Card(
                color: Colors.black12,
                child: Container(
                  height: 100,
                  width: 200,
                  child: Center(child: Text(takedata)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
  }