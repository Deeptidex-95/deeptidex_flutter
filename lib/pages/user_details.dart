import 'package:button_prj/common_text_style/common_text_style.dart';
import 'package:button_prj/scroll_behavior.dart';
import 'package:button_prj/widgets/common_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class UserDetails extends StatefulWidget {
  @override
  _UserDetailsState createState() => _UserDetailsState();
}

CommonTextStyle _commonTextStyle = CommonTextStyle();

class _UserDetailsState extends State<UserDetails>
{
  CommonWidget _commonWidget = CommonWidget();
  String fName = " Please Enter First Name";
  String lName = "Please Enter Last Name ";
  TextEditingController _fNameController = TextEditingController();
  TextEditingController _lNameController = TextEditingController();
  FocusNode nodeTwo = FocusNode();
  double screenHeight = 0.0;
  
  Widget build(BuildContext context)
  {
       //Define mobile screen height
    screenHeight = MediaQuery.of(context).size.height;
   
    // Email text input  field
    Widget fNameFieldE = Container(
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
            hintText: fName,
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

// Password text input field
    Widget lNameFieldE = Container(
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
            hintText: lName,
            hintStyle: _commonTextStyle.hintTextStyle,
            border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(46.0))),
        onChanged: (val) {
          val = _lNameController.text.toString();
        },
      ),
    );

// Sign up button

    return
     Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Color(0xFFFBE9D5),
          leading: backButton,
        ),
        body: ScrollConfiguration(
          behavior: MyBehavior(),
          child: SingleChildScrollView(
            physics: NeverScrollableScrollPhysics(),
            child: Padding(
              padding:
                  const EdgeInsets.only(left: 25.0, right: 25.0, top: 10.0),
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
                          height: 8.0,
                        ),
                        fNameFieldE,
                        hightSpaceBetween,
                        passwordFieldL,
                        SizedBox(
                          height: 8.0,
                        ),
                        lNameFieldE,
                        hightSpaceBetween,
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25.0, bottom: 30),
                    child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [signUpDetailL, _commonWidget.signUpButton(context) ],
                        )),
                  ),
                ],
              ),
            ),
          ),
        ),
      );

  }

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
              hintText: fName,
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
              hintText: lName,
              hintStyle: _commonTextStyle.hintTextStyle,
              border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(46.0))),
          onChanged: (val) {
            val = _lNameController.text.toString();
          },
        ),
      );

// Sign up details text
  Widget signUpDetailL = Padding(
    padding: const EdgeInsets.only(bottom: 15.0),
    child: Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        child: RichText(
            text: TextSpan(
                text: 'By Signing up ,you agree to our  ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 11,
                  color: Colors.black54,
                ),
                children: <TextSpan>[
              TextSpan(
                  text: 'Terms ',
                  style: TextStyle(
                      fontSize: 11,
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      // open desired screen
                    }),
              TextSpan(
                text: ' and  ',
                style: TextStyle(
                    color: Colors.black54,
                    fontSize: 11,
                    fontWeight: FontWeight.bold),
              ),
              TextSpan(
                  text: 'Privacy Policy',
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

  // Top level sign up text(label)
  Widget signUpButtonL = Padding(
    padding: const EdgeInsets.only(left: 40, top: 50.0, right: 40.0, bottom: 25.0),
    child: OutlinedButton(
      child: Text(
        "SignUp",
        style: TextStyle(
            color: Colors.brown, fontSize: 22.0, fontWeight: FontWeight.bold),
      ),
      onPressed: () {},
    ),
  );

  // App bar back button
  Widget backButton = IconButton(
    color: Colors.brown,
    iconSize: 30,
    onPressed: () {
    },
    icon: Icon(Icons.arrow_back),
  );

  // Space between 2 text field
  Widget hightSpaceBetween = SizedBox(
    height: 35.0,
  );
  // OutSide of build Method

  //Email field Heading (Label)
  Widget emailFieldL = Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: Text('First Name', style: _commonTextStyle.buttonTextStyle));

// Password Field Heading (Label)
  Widget passwordFieldL = Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: Text('Last Name', style: _commonTextStyle.buttonTextStyle));
}


// Interface practice
 class DemoInterface {

  void showData() {
    print(" Method 1  ");
  }

}

// Class Demo implementing Demointerface
class Demo implements DemoInterface{
  void showData() {
    print(" implement Demo Interface");
  }

}