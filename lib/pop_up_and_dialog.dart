
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PopUpAndDialog extends StatefulWidget {
  @override
  _PopUpAndDialogState createState() => _PopUpAndDialogState();
}

class _PopUpAndDialogState extends State<PopUpAndDialog>
{

 /* Dialog leadDialog = Dialog(
    child: Container(
      height: 300.0,
      width: 360.0,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              'Choose from Library',
              style:
              TextStyle(color: Colors.black, fontSize: 22.0),
            ),
          ),
        ],
      ),
    ),
  );*/
 /* Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
        Row(
        children: <Widget>[
        RaisedButton(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0),
        textColor: Colors.black,
        child: Text(
          'LeaderBoard',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        onPressed: () {

          showDialog(
              context: context,
              builder: (BuildContext context) => leadDialog);
        },
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0)),
      ),


      ],),
      ]),
      ));
  }*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return Dialog(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
                  elevation: 16,
                  child: Container(
                    child: ListView(
                      shrinkWrap: true,
                      children: <Widget>[
                        SizedBox(height: 20),
                        Center(child: Text('Leaderboard')),
                        SizedBox(height: 20),
                        _buildRow('assets/images/nature.jpg', 'Name 1', 1000),

                        _CancelandOkBtn(),

                      ],
                    ),
                  ),
                );
              },
            );
          },
          child: Text('Show dialog'),
        ),
      ),
    );
  }

  Widget _buildRow(String imageAsset, String name, double score , ) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0,),
      child: Column(
        children: <Widget>[
          SizedBox(height: 5),
          Container(height: 2, color: Colors.redAccent),
          SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                decoration: new BoxDecoration(

                    borderRadius:BorderRadius.all(Radius.circular(15.0)),
                  border: Border.all(width: 5.0, color: Colors.blueAccent),

                ),
                height: 100,
                width: 160,
                child: Card(

                  child: Image(
                    fit: BoxFit.fill,
                       image: AssetImage(imageAsset,),
                  ),
                ),
              ),

            ],
          ),
        ],
      ),
    );
  }
 // ignore: non_constant_identifier_names
 Widget _CancelandOkBtn(){
    return Row(
       mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: new BoxDecoration(
            borderRadius:BorderRadius.all(Radius.circular(15.0)),

          ),
          child: ElevatedButton(
          onPressed: () {}, child: Text('Ok'),),
        ),
        SizedBox(width: 30.0,),
        Container(
          decoration: new BoxDecoration(
            borderRadius:BorderRadius.all(Radius.circular(15.0)),

          ),
          child: ElevatedButton(

            onPressed: () {
              Navigator.of(context).pop(true);
            }, child: Text('Cancel'),),
        )
      ],
    );
 }
}
