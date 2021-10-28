import 'package:button_prj/pages/sign_up.dart';
import 'package:button_prj/pages/user_details.dart';
import 'package:flutter/material.dart';

void main()
{
  Demo demo =  Demo();

      demo.showData();
      runApp(
        MaterialApp(
          debugShowCheckedModeBanner: false,
              home: SignUp(),
          // ListViewWithApi() ,
        ));
  }


