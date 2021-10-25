
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'button_files.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}
// EAE6E5
class _SignUpState extends State<SignUp> {
  late bool _passwordVisible;

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordcontroller = TextEditingController();

  @override
  void initState() {
    _passwordVisible = false;
    _emailController = TextEditingController();
    _passwordcontroller = TextEditingController();
  }


  FocusNode nodeOne = FocusNode();
  FocusNode nodeTwo = FocusNode();

  Widget build(BuildContext context) {
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
        controller: _emailController,
        cursorColor: Colors.greenAccent,
        decoration: InputDecoration(
            fillColor: Color(0xFFEAE6E5),
            filled: true,
            hintText: "Email",
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
          val = _emailController.text.toString();
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
        controller: _passwordcontroller,
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

                  // Based on passwordVisible state choose the icon
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
          val = _passwordcontroller.text.toString();
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
        body: Padding(
          padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 50.0),
          child: SingleChildScrollView(
            physics: NeverScrollableScrollPhysics(),
            //EAE6E5
            child:
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                signUpButtonL,
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
    padding: const EdgeInsets.only(top: 50.0),
    // ignore: deprecated_member_use
    child: OutlineButton(


      padding: EdgeInsets.only(
          left: 35, right: 35.0, top: 25.0, bottom: 25.0),
      // color :Colors.amberAccent,
      child: Text(" Sign Up", style: TextStyle(
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

}
