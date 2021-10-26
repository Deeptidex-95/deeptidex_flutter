

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../scroll_behavior.dart';

class ButtonAndText extends StatefulWidget {
  @override
  _ButtonAndTextState createState() => _ButtonAndTextState();
}

class _ButtonAndTextState extends State<ButtonAndText>
{
  double screenHeight = 0.0;
  double screenWidth  = 0.0;
  List userDetailList = [] ;
   var response = {
    "data": [
      {
        "fname": "John",
        "lname": "Son",
           "btnname" :"toggle Button" ,
        "date" :"26/10/21"
      },
      {
        "fname": "Angula",
        "lname": "Sen",
           "btnname" :"toggle Button" ,
        "date" :"27/10/21"
      },
      {
        "fname": "Muyaz ",
        "lname": "khan",
        "btnname" :"toggle Button",
        "date" :"28/10/21"
      },
      {
        "fname": "Aarun",
        "lname": "Sen",
        "btnname" :"toggle Button",
        "date" :"29/10/21"
      },
      {
        "fname": "John",
        "lname": "Son",
        "btnname" :"toggle Button" ,
        "date" :"26/10/21"
      },
      {
        "fname": "Angula",
        "lname": "Sen",
        "btnname" :"toggle Button" ,
        "date" :"27/10/21"
      },
      {
        "fname": "Muyaz",
        "lname": "khan",
        "btnname" :"toggle Button",
        "date" :"28/10/21"
      },
      {
        "fname": "Aarun",
        "lname": "Sen",
        "btnname" :"toggle Button",
        "date" :"29/10/21"
      },
    ],

  };

  getListData() async {
    dynamic _serverTransResponse =  response;
      setState(() {
        userDetailList = _serverTransResponse['data'];
      });
    print(userDetailList.length);
    print(_serverTransResponse['data']);
  }

  @override
  void initState() {
    super.initState();
    getListData();
  }

  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.pink[50],
      appBar: AppBar(
        elevation: 0.0,
       backgroundColor: Colors.pink[100],
        leading: backButton,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Align(
              alignment: Alignment.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  userProfilePicture(),
                  userDetailL(screenWidth),
                 Padding(padding: const EdgeInsets.only(top:5.0,bottom: 13.0,left: 10.0,right: 10.0),
                  child: Column(
                    children: [
                      Container(
                         height:screenHeight / 2.1,
                        width: double.infinity,
                      child : ScrollConfiguration(
                       behavior: MyBehavior(),
                        child: ListView.builder(
                         itemCount:  userDetailList.length,
                            itemBuilder:(context, index) {
                              return Padding(
                                padding: const EdgeInsets.only(top:8.0),
                                child: Card(
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: userProfileDetailHeading(),
                                      ),
                                      userProfileDetailText(userDetailList,index),
                                    ],
                                  ),
                                ),
                              );
                            },),
                      ),

                      ),

                    ],

                  ),
                 ),

                ],
              ),

            ),
          ),
          nextButton(screenHeight,screenWidth),
        ],
      ),
    );
  }
}
// Next page button
Widget nextButton(screenHeight,screenWidth) {
  return Container(
    height: screenHeight / 15,
    width: screenWidth ,
    child: Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 15.0,),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.0)),
            primary: Colors.pink[100],
            minimumSize: Size(double.infinity / 2, 40)),
        onPressed: () {

        },
        child: Text(
          "Next",
          style: TextStyle(color: Colors.white70),
        ),

      ),
    ),
  );
}
// top level image
Widget userProfilePicture()
{
  return  CircleAvatar(
    radius: 50.0,
    backgroundImage: AssetImage("assets/images/female.png",),
    backgroundColor: Colors.white70,
  );
}
// User detail Page Detail Label
Widget userDetailL (screenWidth) =>  Card(
    child: Container(
        height: 50,
        width: screenWidth /2,
        child: Center(child: Text("User Details"))));


// AppBar back button
Widget backButton = IconButton(
  color: Colors.white70,
  iconSize: 30,
  onPressed: () {
  },
  icon: Icon(Icons.arrow_back),
);
// User Detail Page Text Value
Widget  userProfileDetailText(userDetailList,index)
{
  return   Column(
    children: [
      Text(userDetailList[index]['fname']),
      Text(userDetailList[index]['lname']),
      Text(userDetailList[index]['date'])
    ],
  );
}
// User detail heading
Widget userProfileDetailHeading()
{
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text('First Name'),
      Text('Last Name'),
      Text('Date')
    ],
  );
}
