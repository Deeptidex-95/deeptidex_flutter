import 'package:button_prj/my_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';



class Example extends StatelessWidget
{
  final List<Map> myProducts =
  List.generate(100000, (index) => {"id": index, "name": "Product $index",

  }).toList();

  final List<Map> myname =
  List.generate(100000, (index) => {"id": index, "name": "Deepti $index",

  }).toList();
// This widget is the root of your application
  @override
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
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,

              children: [
                Expanded(
                  child: Container(
                    width: MediaQuery.of(context).size.width /3 ,
                    height: 120,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        itemBuilder: (BuildContext context,int index){
                          return   Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GestureDetector(
                              behavior: HitTestBehavior.translucent,
                              onTap: (){},
                              child: Container(
                                alignment: Alignment.center,
                                child: Text(myProducts[index]["name"]),
                                decoration: BoxDecoration(
                                    color: Colors.amber,
                                    borderRadius: BorderRadius.circular(20)),
                              ),
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
                height: MediaQuery.of(context).size.height * 0.6 ,
                child: GridView.builder(

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
