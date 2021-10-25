/*
import 'package:flutter/material.dart';

class BottomSheetOnlyCardView extends StatelessWidget {
  final String sheetTitle;
  final TextStyle sheetTitleStyle;
  final Color topLineColor;
  final double topLineThickness;
  final double topLineWidth;
  final topLineClickCallBack;
  final Color cardBackgroundColor;
  final double cardShape;
  final double bottomSheetHeight;
  final Widget child;

  BottomSheetOnlyCardView(
      {required Key key,
      this.sheetTitle = "",
      required this.sheetTitleStyle,
      this.bottomSheetHeight = 0,
      required this.topLineColor,
      this.topLineThickness = 4,
      this.topLineWidth = 50,
      this.cardBackgroundColor = Colors.red,
      this.cardShape = 30,
      this.topLineClickCallBack,
      required this.child})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    double bottomSheetHeight = this.bottomSheetHeight > 0
        ? this.bottomSheetHeight
        : appDimens.heightFullScreen() / 4.4;

    return ScrollConfiguration(
      behavior: MyBehavior(),
      child: Padding(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: ListView(
          shrinkWrap: true,
          children: [
            Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  GestureDetector(
                    onTap: () {
                      if (topLineClickCallBack != null) {
                        topLineClickCallBack(context);
                      }
                      Navigator.pop(context);
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 12, bottom: 10),
                      width: topLineWidth,
                      child: Divider(
                        color: topLineColor != null
                            ? topLineColor
                            : appColors.appListDividerColor[400],
                        //height: 10,
                        thickness: topLineThickness,
                        indent: 1,
                        endIndent: 1,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 0.0),
                    child: Column(
                      children: [
                        Text("$sheetTitle",
                            style: sheetTitleStyle != null
                                ? sheetTitleStyle
                                : appStyles.titleStyle1(fontSize: 22)),
                        Container(
                          height: bottomSheetHeight,
                          child: child != null ? child : Container(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
*/
