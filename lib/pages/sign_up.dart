
import 'package:button_prj/common_text_style/common_text_style.dart';
import 'package:button_prj/widgets/common_next_button.dart';
import 'package:button_prj/widgets/common_widget.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'button_and_text.dart';


class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp>
{
  bool isChecked = false;
  CommonTextStyle _commonTextStyle = CommonTextStyle();
  CommonWidget _commonWidget = CommonWidget();
  String emailHintTxt = " Please Enter Email";
  String passwordHintTxt = "Please Enter Password ";
  double screenHeight = 0.0;
  double screenWidth = 0.0;
  TextEditingController _fNameController = TextEditingController();
  TextEditingController _lNameController = TextEditingController();
  FocusNode nodeTwo = FocusNode();
 // bool _switchValue=true;
  bool _passwordVisible = false;
  var isSelected = [false, true];
 //   List<bool> _selections = List.generate(3, (_) => false);
  Widget build(BuildContext context) {
    screenHeight   = MediaQuery.of(context).size.height;
    screenWidth =  MediaQuery.of(context).size.width;
//    int buttonIndex = 0;
    // Email text input  field -
    Widget emailFieldE =
    Container(
      decoration: BoxDecoration(
          border: Border.all(color: Color(0xFF5D3F3).withOpacity(0.1),),
          borderRadius: BorderRadius.circular(46.0)
      ),
      child: TextField(
        showCursor: false,
        autofocus: true,
        keyboardType: TextInputType.emailAddress,
        controller: _fNameController,
        cursorColor: Colors.greenAccent,
        decoration: InputDecoration(
            fillColor: Color(0xFFEAE6E5),
            filled: true,
            hintText: "Email",
            contentPadding: EdgeInsets.only(
                left: 30, right: 30, top: 5, bottom: 5),
            hintStyle: TextStyle(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w100,
                fontSize: 12.0,
                color: Colors.black26
            ),

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
// Password  text input field -
    Widget passwordFieldE =
    Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(46.0),
      ),
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
            suffixIcon: Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: IconButton(
                padding: EdgeInsets.zero,
                constraints: BoxConstraints(),
               disabledColor: Colors.red,
                icon: Icon(
                  _passwordVisible
                      ? Icons.visibility
                      : Icons.visibility_off,
                  color: Colors.brown,
                ),
                onPressed: () {
                  setState(() {
                    _passwordVisible = !_passwordVisible;
                  });
                },),
            ),
            hintText: "Password",
            hintStyle: TextStyle(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w100,
                fontSize: 12.0,
                color: Colors.black26
            ),
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

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:
      Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
         elevation: 0.0,
         backgroundColor: Color(0xFFFBE9D5),
          leading:  backButton,
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 25.0, right: 25.0, ),
          child: SingleChildScrollView(
            physics: NeverScrollableScrollPhysics(),
            child:
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                signUpButtonL,
            /*  GestureDetector(
                onTap: () {
                  setState(() {
                    isChecked = !isChecked;
                  });
                },
                child: Center(
                  child: CustomSwitchButton(
                    backgroundColor: Colors.blueGrey,
                    unCheckedColor: Colors.white,
                    animationDuration: Duration(milliseconds: 400),
                    checkedColor: Colors.lightGreen,
                    checked: isChecked,
                  ),
                ),
              ),*/
                Container(
                  height: screenHeight / 2.2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      emailFieldE,
                      hightSpaceBetween,
                         passwordFieldE,
                      hightSpaceBetween,
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 5.0, bottom: 30),
                  child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Column(mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          signUpDetailL,
                           CommonNextButton(
                            child: Center(child: Text('Back',style: TextStyle(fontSize: 15,color: Colors.white70),),),
                            widthSize: double.infinity,
                            heightSize:screenHeight/16,
                              decoration: BoxDecoration(
                                  boxShadow: [
                                     //background color of box
                                    BoxShadow(
                                      color: Colors.black12,
                                      blurRadius: 5.0, // soften the shadow
                                      spreadRadius: 1.0, //extend the shadow
                                      offset: Offset(
                                        0.5, // Move to right 10  horizontally
                                        0.5, // Move to bottom 10 Vertically
                                      ),
                                    )
                                  ],
                                color: Colors.amberAccent,
                                 borderRadius: BorderRadius.circular(40.0)
                              ),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => ButtonAndText()),
                                );
                              },
                          ),
                          _commonWidget.signUpButton(context),
                          
                        ],
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
// Sign up detail text(Label)
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
                         }),

                ])),
      ),
    ),
  );


// Email field with function
  Widget getEmailFieldE() => Container(
    decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xFF5D3F3).withOpacity(0.1),
        ),
        borderRadius: BorderRadius.circular(46.0)),

    child: TextField(
      showCursor: false,
      autofocus: true,
      keyboardType: TextInputType.emailAddress,
      controller: _fNameController,
      cursorColor: Colors.greenAccent,
      decoration: InputDecoration(
          fillColor: Color(0xFFEAE6E5),
          filled: true,
          hintText: emailHintTxt,
          contentPadding:
          EdgeInsets.only(left: 30, right: 30, top: 5, bottom: 5),

          hintStyle: TextStyle(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w100,
              fontSize: 12.0,
              color: Colors.black26),

          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(46.0))),
      onChanged: (val) {
        val = _fNameController.text.toString();
      },
    ),
  );


  // Password field with function
  Widget getPasswordField() => Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(46.0),
    ),
    child: TextField(
      showCursor: false,
      focusNode: nodeTwo,
      keyboardType: TextInputType.text,
      controller: _lNameController,
      cursorColor: Colors.greenAccent,
      decoration: InputDecoration(
          fillColor: Color(0xFFEAE6E5),
          filled: true,
          contentPadding:
          EdgeInsets.only(left: 30, right: 30, top: 5, bottom: 5),
          hintText: passwordHintTxt,
          hintStyle: _commonTextStyle.hintTextStyle,
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(46.0))),
      onChanged: (val) {
        val = _lNameController.text.toString();
      },
    ),
  );

  
  
  
  
  // Top level sign up text(label)
  Widget signUpButtonL =   Padding(
    padding: const EdgeInsets.only(left: 35, right: 35.0,top: 50.0, bottom: 25.0),
        child: OutlinedButton(

      child: Text(" Sign Up", style: TextStyle(
          color: Colors.brown,
          fontSize: 22.0,
          fontWeight: FontWeight.bold
      ),),
      onPressed: () {},
    ),
  );


  // Appbar back button
  Widget backButton = IconButton(color: Colors.brown,
    iconSize: 30,
    onPressed: () {

    }, icon: Icon(Icons.arrow_back),
  );
  // Space between 2 text field
  Widget hightSpaceBetween =  SizedBox(
    height: 35.0,
  );

}
