
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Demo1 extends StatefulWidget {


  @override
  _Demo1State createState() => _Demo1State();
}

class _Demo1State extends State<Demo1>
{
  @override
  var list = <Map>[];
  final List<Map<String, Object>> myPhraseList = [
    {'phrase': 'Phrase 1 some interesting phrase'},
    {'phrase': 'Phrase 2 and yet another interesting phrase'},
    {'phrase': 'Phrase 3 and yet another interesting phrase'},

  ];
  @override
  Widget build(BuildContext context) {

    return
       Scaffold(
        appBar: AppBar(


          title: Text('Example'),
          backgroundColor: Colors.grey,
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height  * 0.8,

                child:Column(
                  children: [
                    Card(

                      margin:   new EdgeInsets.symmetric(horizontal: 20.0,
                        vertical: 20.0,

                      ),

                      color: Colors.grey,
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.15,
                          width: MediaQuery.of(context).size.width ,
                          child: Center(child: Text('All Information'))),
                    ),
                    Container(
                      width :MediaQuery.of(context).size.width *0.6,
                      height: MediaQuery.of(context).size.height *0.3,
                      child: ListView.builder(
                          itemCount: myPhraseList.length,
                          itemBuilder: (BuildContext context,int index){
                            return/* Container(
                      child: Text(list[index].toString()),
      );*/
                              ListTile(
                                title: Text('Person'),
                                leading: Icon(Icons.list),
                                trailing: CircleAvatar(
                                  backgroundColor: Colors.transparent,
                                  child: Image.asset('assets/images/user.png',fit: BoxFit.cover,),
                                ),
                              );
                          }
                      ),
                    ),
                  ],
                ), /*Column(
                  children: [

                    Card(
                      child: Container(
                        height:80,
                       MediaQuery.of(context).size.height*0.4,
                        width: 150,
                        child: Text('Hello'),
                      ),
                    ),*/



              ),
            ),
          ],
        ),
        );
        


  }
}
