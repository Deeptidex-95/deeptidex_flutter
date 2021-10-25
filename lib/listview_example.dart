import 'dart:async';
import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'models/user.dart';
import 'my_name.dart';
/*
Future<UserDetail> fetchAlbum() async {
  final response = await http
      .get(Uri.parse('jsonplaceholder.typicode.com/albums'));
  if (response.statusCode == 200)
  {
     return UserDetail.fromJson(jsonDecode(response.body));
  }
  else {
       throw Exception('Failed to load album');
  }
}*/




class ListViewExample extends StatefulWidget {

  const ListViewExample({Key? key}) : super(key: key);

  @override
  _ListViewExampleState createState() => _ListViewExampleState();
}

class _ListViewExampleState extends State<ListViewExample> {
  List<String> litems = ["1","2","Third","4"];
   String senddata ='';
  late Future<UserDetail> futureAlbum;
  final List<Map> myProducts =
  List.generate(100000, (index) => {"id": index, "product": "Product $index", "name" : "Deepti $index",

  }).toList();


  @override
  void initState() {
    super.initState();




  }
var takedata;
  @override
  Widget build(BuildContext context)
  {
    void showToast() {
      Fluttertoast.showToast(

          fontSize: 20,
          msg: takedata,
           toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.CENTER,

          backgroundColor: Colors.amberAccent,
          textColor: Colors.white,

      );
    }
    void _showToast(BuildContext context) {
      final scaffold = Scaffold.of(context);
      // ignore: deprecated_member_use
      scaffold.showSnackBar(
        SnackBar(

          content: const Text('Added to favourite'),
          action: SnackBarAction(
            label: 'UNDO',
            // ignore: deprecated_member_use
            onPressed:scaffold.hideCurrentSnackBar,
          ),
        ),
      );
    }
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    return  MaterialApp(

      home: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.white,
    /*    appBar: AppBar(
          leading: IconButton(icon: Icon(Icons.arrow_back_ios_outlined),onPressed: (){
            Navigator.of(context).pop();
          },),
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
        ),*/
        body:OrientationBuilder(
        builder: (context, orientation)
    {
      return
        CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.amberAccent,
              title: Text('Demo'),
            ),
            SliverFillRemaining(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [

                      Expanded(

                        child:

                        Container(
                          width: MediaQuery
                              .of(context)
                              .size
                              .width / 3,
                          height: 120,
                          child:
                          ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 10,
                              itemBuilder: (BuildContext context, int index) {
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: GestureDetector(
                                    behavior: HitTestBehavior.translucent,
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Card(
                                          color: Colors.amberAccent,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                                15.0),
                                          ),
                                          child: Container(
                                              width: 150,
                                              height: 100,
                                              child: Center(child: Text(
                                                  myProducts[index]["product"])))),
                                    ),
                                    onTap: () {
                                      setState(() {
                                        takedata = myProducts[index]["name"];
                                        showToast();
                                      });
                                      /* Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => SecondPage
                                      ( takedata)),
                                  );*/

                                    },

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
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      height: MediaQuery
                          .of(context)
                          .size
                          .height * 0.5,
                      child: GridView.builder(
                          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                              maxCrossAxisExtent: 100,
                              childAspectRatio: 3 / 2,
                              crossAxisSpacing: 20,
                              mainAxisSpacing: 20),
                          itemCount: myProducts.length,
                          itemBuilder: (BuildContext ctx, index) {
                            return
                              Card(
                                //   alignment: Alignment.center,
                                child: Image(
                                    image: AssetImage(
                                        'assets/images/nature1.png')),
                                /*  decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(20)),*/
                              );
                          }),
                    ),
                  ),
                  nameShow(),
                ],
              ),
            ),

          ],


        );
     }


      )
      ));


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



  }
  Widget nameShow(){
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child:
       Card(
          color: Colors.amberAccent,
          shape:    RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,

              child: Center(child:
                takedata == null ?
             Text('Please Select Product  '):  Text(takedata) )
          ),
        )
      ),
    );
  }
}