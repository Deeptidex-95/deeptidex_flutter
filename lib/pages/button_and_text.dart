import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../practice_test.dart';
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
 late  int _id = -1 ;
   var response = {
    "data": [
      {
        "f_name": "John",
        "l_name": "Son",
         "btn_name" :"toggle Button" ,
        "date" :"26/10/21"
      },
      {
        "f_name": "Angula",
        "l_name": "Sen",
           "btn_name" :"toggle Button" ,
        "date" :"27/10/21"
      },
      {
        "f_name": "Muyaz ",
        "l_name": "khan",
        "btn_name" :"toggle Button",
        "date" :"28/10/21"
      },
      {
        "f_name": "Aarun",
        "l_name": "Sen",
        "btn_name" :"toggle Button",
        "date" :"29/10/21"
      },
      {
        "f_name": "John",
        "l_name": "Son",
        "btn_name" :"toggle Button" ,
        "date" :"26/10/21"
      },
      {
        "f_name": "Angula",
        "l_name": "Sen",
        "btn_name" :"toggle Button" ,
        "date" :"27/10/21"
      },
      {
        "f_name": "Muyaz",
        "l_name": "khan",
        "btn_name" :"toggle Button",
        "date" :"28/10/21"
      },
      {
        "f_name": "Aarun",
        "l_name": "Sen",
        "btn_name" :"toggle Button",
        "date" :"29/10/21"
      },
    ],
  };

  getListData() async {
    dynamic  _serverTransResponse =  response;
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

    //Define mobile screen height
    screenHeight = MediaQuery.of(context).size.height;
    // Define mobile screen width
    screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(

      backgroundColor: Colors.pink[50],
      appBar: AppBar(
        elevation: 0.0,
       backgroundColor: Colors.pink[100],
        leading: backButton(context),
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
                                child: GestureDetector(
                                   behavior: HitTestBehavior.translucent,
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
                                  onTap: (){
                                    setState((){
                                      _id = index;
                                           });
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        duration: Duration(seconds: 1, milliseconds: 10),
                                        content:   Text(userDetailList[_id]['f_name']),
                                        action: SnackBarAction(
                                          label: userDetailList[index]['date'],
                                          onPressed: () {

                                          },
                                        ),
                                      ),
                                    );

                                  },
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
         /* _id == -1 ? Container():
          Text(userDetailList[_id]['f_name']),*/
          nextButton(screenHeight,screenWidth,context),
        ],
      ),
    );
  }
}
// Next  button
Widget nextButton(screenHeight,screenWidth,context) {
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
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => PracticeTest()),
          );
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

// User detail Page Detail label
Widget userDetailL (screenWidth) =>  Card(
    child: Container(
        height: 50,
        width: screenWidth /2,
        child: Center(child: Text("User Details"))));


// AppBar back button
Widget backButton(context) => IconButton(
  color: Colors.white70,
  iconSize: 30,
  onPressed: () {
    Navigator.of(context).pop();
  },
  icon: Icon(Icons.arrow_back),
);

// User detail page text value
Widget  userProfileDetailText(userDetailList,index)
{
  return   Column(
    children: [
      Text(userDetailList[index]['f_name']),
      Text(userDetailList[index]['l_name']),
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
