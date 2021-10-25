
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'models/user.dart';

class ListViewWithApi extends StatefulWidget {
  @override
  _ListViewWithApiState createState() => _ListViewWithApiState();
}

class _ListViewWithApiState extends State<ListViewWithApi>
{
  late Future<UserDetail> fetchData;


  dynamic futureData;
  @override
  final List<Map> myProducts =
  List.generate(100000, (index) => {"id": index, "name": "Product $index",

  }).toList();
  var getResponse ;
/*  void initState() {
    getdata();
    setState(()
    {
      getResponse =   getdata();
      futureData = getdata();
      print(futureData);
      print('getting data');
    }
    );
    super.initState();
    print(getResponse.toString());
    print('print api data');
    print(getResponse);
    print('getting error');

  }*/
  @override
/*
  Future<UserDetail> getdata() async {
    final response = await http
        .get('https://jsonplaceholder.typicode.com/albums');

    print(response);
    if (response.statusCode == 200)
    {
      return UserDetail.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load album');
    }
  }*/
  Widget build(BuildContext context) {
    return
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.grey,
            title:  Center(
              child: Text(
                ' GridView ',
                style: TextStyle(
                  color: Colors.white70,
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                ),
              ),
            ),

            actions: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.settings,
                  color: Colors.white,
                ),
                onPressed: () {
                  // do something
                },
              ),


            ],
          ),
          body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height ,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,

                  children: [

                    Expanded(
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 6,
                          itemBuilder: (BuildContext context,int index){
                            return   Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 200,
                                height: 100,
                                color: Colors.red,
                                child: Text('hiii'),
                              ),
                            );

                            /*ListTile(
                              leading: Icon(Icons.list),
                              trailing: Text("GFG",
                                style: TextStyle(
                                    color: Colors.green,fontSize: 15),),
                              title:Text("List item $index")
                          );*/
                          }
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.6 ,
                    child: GridView.builder(
                    //    crossAxisCount:
                      //  (MediaQuery.of(context).orientation == Orientation.landscape),
                        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 150,
                            childAspectRatio: 3/2,
                            crossAxisSpacing: 20,
                            mainAxisSpacing: 20),
                        itemCount: myProducts.length,
                        itemBuilder: (BuildContext ctx, index) {
                          return
                            Card(
                              //   alignment: Alignment.center,
                              child:  Image(image:  AssetImage('assets/images/nature1.png')),
                              /*  decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(20)),*/
                            );
                        }),
                  ),
                ),
              ],
            ),
          ),
          /*GridView.count(
          crossAxisCount: 3,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
          shrinkWrap: true,
          children: List.generate(18, (index) {
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey,

                  borderRadius:
                  BorderRadius.all(Radius.circular(20.0),),

                ),
                child: Card(
                  elevation: 0.1,

                  child: Image(image:  AssetImage('assets/images/nature1.png')),
                ),
              ),
            );
          },),
        ),*/

        ),
      );
  }
}
