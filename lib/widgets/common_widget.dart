

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CommonWidget
{
  // Signup common  button for all pages

  Widget signUpButton(context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.0)),
            primary: Color(0xFF74D6B8),
            minimumSize: Size(double.infinity, 55)),
        onPressed: () {
          FocusScope.of(context).requestFocus();
        },
        child: Text("Next", style: TextStyle(color: Colors.white70),),
      ),
    );

  }


  // Common next button for all pages

  Widget nextButton(screenHeight,screenWidth)
  {
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


}