



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  var onPressed;

  var title;

  var btnIconSize;

  var gap;

  var width;

  var height;

  var btnBgColor;

  var iconColor;

  var textStyle;

  var btnShape;

  CommonButton({
    @required this.onPressed,
    this.title = 'DONE',
    this.gap = 5.0,
    this.btnIconSize = 45.0,
    this.width = 120.0,
    this.height = 47.0,
    this.btnBgColor = Colors.grey,
    this.iconColor,
    this.textStyle,
    this.btnShape,

  });
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
