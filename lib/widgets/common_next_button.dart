import 'package:flutter/material.dart';

class CommonNextButton extends StatefulWidget {
  final color;

  const CommonNextButton({Key? key, this.color}) : super(key: key);
  @override
  _CommonNextButtonState createState() => _CommonNextButtonState(color: this.color);
}

class _CommonNextButtonState extends State<CommonNextButton> {
  var color;


  _CommonNextButtonState({this.color});

  @override
  Widget build(BuildContext context) {
    return Container(color: color,height: 80,width: 80,);
  }
}









// import 'package:flutter/material.dart';
//
// // Commmon next button class
// //final TextStyle textStyle;
// class CommonNextButton extends StatefulWidget
// {
//   final buttonColor;
//   final String buttonName;
//   final double  btnIconSize;
//   final GestureTapCallback onTap;
//   final double widthSize;
//   final double heightSize;
//   final child;
//   final  decoration;
//   CommonNextButton({Key? key, this.buttonColor, this.buttonName = 'Next',  this.btnIconSize = 45,required this.onTap ,required this.widthSize, required this.heightSize,required this.child ,  this.decoration,  color, }) : super(key: key);
//   @override
//   _CommonNextButtonState createState() => _CommonNextButtonState();
// }
//
// class _CommonNextButtonState extends State<CommonNextButton>
// {
//
//  // Color buttonColor = Colors.red;
// //  String buttonName = "Next";
// //  double btnIconSize = 34;
// //  late final GestureTapCallback onTap;
//  // var  child;
//  // double widthSize = 200;
// //  double heightSize = 50;
//    final Decoration  decoration;
//   var child;
//   Color buttonColor;
//   String buttonName;
//   double btnIconSize;
//   double widthSize;
//   double heightSize;
//   // ignore: unused_element
//   _CommonNextButtonState({this.buttonColor = Colors.red, this.buttonName = "Next", this.btnIconSize = 34, onTap , this.widthSize = 200, this.heightSize = 50,  child, this.decoration = BoxDecoration(color: Colors.black12)}) {
//   /*  this.buttonColor = buttonColor;
//     this.buttonName = buttonName;
//     this.btnIconSize = btnIconSize;
//     this.onTap = onTap;
//     this.widthSize = widthSize;
//     this.heightSize = heightSize;
//     this.child = child;
//     this.decoration = decoration;*/
//
//   }
//   /* _CommonNextButtonState(
//       {buttonColor, buttonName, btnIconSize, onTap, widthSize, heightSize,  child, decoration}) {
//     this.buttonColor = buttonColor;
//     this.buttonName = buttonName;
//     this.btnIconSize = btnIconSize;
//     this.onTap = onTap;
//     this.widthSize = widthSize;
//     this.heightSize = heightSize;
//     this.child = child;
//     this.decoration = decoration;
//
//   }*/
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(10.0),
//       child: GestureDetector(
//
//        // onTap: onTap,
//         // ignore: deprecated_member_use
//         child: Container(
//
//           decoration: decoration,
//           height: heightSize,
//           width: widthSize,
//           child: child,
//          color: buttonColor,
//          // decoration: decoration,
//
//         ),
//
//       ),
//     );
//   }
//
// }