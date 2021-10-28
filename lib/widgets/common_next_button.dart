import 'package:flutter/material.dart';
// Commmon next button class

class CommonNextButton extends StatefulWidget
{

  final Color buttonColor;
  final String buttonName;
  final double  btnIconSize;
  final GestureTapCallback onTap;
  final double widthSize;
  final double heightSize;
  final child;
  final Decoration  decoration;
  CommonNextButton({Key? key, this.buttonColor = Colors.red, this.buttonName = 'Next',  this.btnIconSize = 45,required this.onTap ,required this.widthSize, required this.heightSize,required this.child ,required this.decoration, }) : super(key: key);
  @override
  _CommonNextButtonState createState() => _CommonNextButtonState(buttonColor:this.buttonColor,buttonName:this.buttonName,btnIconSize : this.btnIconSize,onTap:this.onTap,widthSize : this.widthSize,heightSize:this.heightSize,child: this.child ,
      decoration:this.decoration);
}

class _CommonNextButtonState extends State<CommonNextButton>
{

  Color buttonColor = Colors.red;
  String buttonName = "Next";
  double btnIconSize = 34;
  late final GestureTapCallback onTap;
  var  child;
  double widthSize = 200;
  double heightSize = 50;
  late final Decoration  decoration;
  _CommonNextButtonState(
      {buttonColor, buttonName, btnIconSize, onTap, widthSize, heightSize,  child, decoration}) {
    this.buttonColor = buttonColor;
    this.buttonName = buttonName;
    this.btnIconSize = btnIconSize;
    this.onTap = onTap;
    this.widthSize = widthSize;
    this.heightSize = heightSize;
    this.child = child;
    this.decoration = decoration;

  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: heightSize,
          width: widthSize,
          child: child,
          decoration: decoration,

        ),

      ),
    );
  }

}