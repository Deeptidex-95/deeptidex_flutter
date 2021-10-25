
import 'package:button_prj/scroll_behavior.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'button_files.dart';
import 'app_text_style.dart';

class NewSignUp extends StatefulWidget {
  @override
  _NewSignUpState createState() => _NewSignUpState();
}
// EAE6E5

AppTextStyle c1  = AppTextStyle();
class _NewSignUpState extends State<NewSignUp> {
  String fname = " Please Enter First Name";
  String lname = "Please Enter Last Name ";
  late bool _passwordVisible;






  TextEditingController _fNameController = TextEditingController();
  TextEditingController _lNameController = TextEditingController();

  @override
  void initState() {
    _passwordVisible = false;
    _fNameController = TextEditingController();
    _lNameController  = TextEditingController();
    super.initState();
  }


  FocusNode nodeOne = FocusNode();
  FocusNode nodeTwo = FocusNode();

  Widget build(BuildContext context)
  {

    // Email Field -

    Widget emailFieldE =
    Container(
      decoration: BoxDecoration(
          border: Border.all(color: Color(0xFF5D3F3).withOpacity(0.1),),
          borderRadius: BorderRadius.circular(46.0)
      ),

      //  height:screenHeight  - 389,
      child: TextField(
        showCursor: false,
        autofocus: true,
        keyboardType: TextInputType.emailAddress,
        controller:  _fNameController ,
        cursorColor: Colors.greenAccent,
        decoration: InputDecoration(
            fillColor: Color(0xFFEAE6E5),
            filled: true,
            hintText: fname,
            contentPadding: EdgeInsets.only(
                left: 30, right: 30, top: 5, bottom: 5),
            //  EdgeInsets.symmetric(vertical: 18, horizontal: 25),
            hintStyle: TextStyle(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w100,
                fontSize: 12.0,
                color: Colors.black26
            ),
            //    enabledBorder: false,
            border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(46.0)
            )
        ),
        onChanged: (val) {
          val = _fNameController.text.toString();
        },
      ),
    );
// Password Field -
    Widget passwordFieldE =
    Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(46.0),
      ),
      //  height:screenHeight  - 389,
      child: TextField(
        showCursor: false,
        obscureText: !_passwordVisible,
        focusNode: nodeTwo,
        keyboardType: TextInputType.text,
        controller: _lNameController,
        cursorColor: Colors.greenAccent,
        decoration: InputDecoration(
            fillColor: Color(0xFFEAE6E5),
            filled: true,
            contentPadding:
            EdgeInsets.only(left: 30, right: 30, top: 5, bottom: 5),

            hintText:lname,
            hintStyle: c1.hintTextStyle,
            border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(46.0)
            )
        ),
        onChanged: (val) {
          val = _lNameController.text.toString();
        },
      ),
    );

    //  final textScale = MediaQuery.of(context).textScaleFactor;

    double screenHeight = MediaQuery.of(context).size.height;
    Widget signUpButton =
    Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
      child: Container(

          height: 55,
          decoration: BoxDecoration(
              color: Color(0xFF74D6B8),
              //  border: Border.all(color: Color(0xFF5D3F30).withOpacity(0.1),),
              borderRadius: BorderRadius.circular(50.0)
          ),
          width: double.infinity,
          //  padding: EdgeInsets.all(20),
          alignment: Alignment.topCenter,

          // ignore: deprecated_member_use≈
          child: ElevatedButton(

            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0)),
                primary: Color(0xFF74D6B8),
                minimumSize: Size(double.infinity, double.infinity)),
            onPressed: () {
              FocusScope.of(context).requestFocus();
            },
            child: Text("Next", style: TextStyle(color: Colors.white70),),
            /*onPressed:() {
                     */ /* Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Demo(),
                      ));*/ /*
                    },*/
          )
      ),
    );
    TextStyle textStyle = TextStyle(
      color: Colors.black,
      fontSize: 15.0,
      fontStyle: FontStyle.normal,
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:
      Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          //  bottomOpacity: 0.0,
          elevation: 0.0,
          //   bottomOpacity: ,
          backgroundColor: Color(0xFFFBE9D5),
          leading:  backButton,
        ),
        body:ScrollConfiguration(
          behavior: MyBehavior(),
          child: SingleChildScrollView(

            physics: NeverScrollableScrollPhysics(),
            reverse: false,
            //EAE6E5
            child:
            Padding(
              padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  signUpButtonL,
                  Container(
                    height: screenHeight / 2.2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        emailFieldL,
                        SizedBox(
                          height:8.0 ,
                        ),
                        emailFieldE,
                        hightSpaceBetween,
                        passwordFieldL,
                        SizedBox(
                          height: 8.0,
                        ),
                        passwordFieldE,
                        hightSpaceBetween,

                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 25.0, bottom: 30),
                    child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Column(mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [

                            signUpDetailL,
                            signUpButton,
                          ],
                        )),
                  ),
                ],
              ),
            ),


          ),
        ),
      ),
    );
  }

  Widget signUpDetailL =
  Padding(
    padding: const EdgeInsets.only(bottom: 15.0),
    child: Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        child: RichText(
            text: TextSpan(text: 'By Signing up ,you agree to our  ',
                style: TextStyle(

                  fontWeight: FontWeight.bold,
                  fontSize: 11,
                  color: Colors.black54,

                ),
                children: <TextSpan>[
                  TextSpan(text: 'Terms ',
                      style: TextStyle(
                          fontSize: 11,
                          color: Colors.black54,
                          fontWeight: FontWeight.bold,


                          decoration: TextDecoration.underline),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          // open desired screen
                        }),
                  TextSpan(text: ' and  ', style: TextStyle(
                      color: Colors.black54,
                      fontSize: 11,
                      fontWeight: FontWeight.bold

                  ),),
                  TextSpan(text: 'Privacy Policy',
                      style: TextStyle(
                          color: Colors.black54,
                          fontSize: 11,
                          fontWeight: FontWeight.bold,


                          decoration: TextDecoration.underline),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          // open desired screen
                        }),

                ])),
      ),
    ),
  );

  Widget signUpButtonL =   Padding(
    padding: const EdgeInsets.only(top: 25.0),
    // ignore: deprecated_member_use
    child: OutlineButton(


      padding: EdgeInsets.only(
          left: 35, right: 35.0, top: 25.0, bottom: 25.0),
      // color :Colors.amberAccent,
      child: Text("SignUp", style: TextStyle(
          color: Colors.brown,
          fontSize: 22.0,
          fontWeight: FontWeight.bold
      ),),
      onPressed: () {},
    ),
  );
  Widget backButton = IconButton(color: Colors.brown,
    iconSize: 30,
    onPressed: () {
      //  Navigator.of(context).pop(true);
    }, icon: Icon(Icons.arrow_back),
  );
  Widget hightSpaceBetween =  SizedBox(
    height: 35.0,
  );
  Widget emailFieldL =

  Padding(padding:  const EdgeInsets.only(left: 10.0),
       child:

       Text('First Name',style: c1.buttonTextStyle

       ));

  Widget passwordFieldL =
  Padding(padding:  const EdgeInsets.only(left: 10.0),
      child:

      Text('Last Name',style: c1.buttonTextStyle

      ));



}
