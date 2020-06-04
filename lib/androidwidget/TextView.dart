import 'package:flutter/material.dart';
import 'package:xmlflutter/androidwidget/Gravity.dart';
import 'package:xmlflutter/androidwidget/LinearLayout.dart';
import 'package:xmlflutter/androidwidget/ViewGroup.dart';

import 'View.dart';

class TextView extends StatelessWidget {
  String text;
  double layout_width;
  double layout_height;
  double paddingLeft;
  double paddingRight;
  double paddingTop;
  double paddingBottom;
  double marginLeft;
  double marginRight;
  double marginTop;
  double marginBottom;
  int gravity;
  Color backgroundColor;
  Color textColor;
  double textSize;

  //暂未实现
  int layout_gravity;
  String ellipsize;
  bool singleLine;
  double minHeight;
  double maxHeight;
  double minWidget;
  double maxWidget;
  bool selectable;

  TextView(
      {this.text,
      this.layout_width,
      this.layout_height,
      this.paddingLeft,
      this.paddingTop,
      this.paddingRight,
      this.paddingBottom,
      this.marginLeft,
      this.marginRight,
      this.marginTop,
      this.marginBottom,
      this.gravity,
      this.layout_gravity,
      this.backgroundColor,
        this.textColor,
        this.textSize,
      this.ellipsize,
      this.singleLine,
      this.minWidget,
      this.maxWidget,
      this.minHeight,
      this.maxHeight,
      this.selectable});

  @override
  Widget build(BuildContext context) {
    Widget layout = null;
    if(selectable==null)selectable = false;
    TextAlign textAlign = TextAlign.start;
    Alignment alignment = Alignment.topLeft;
    double hor_gravity = -1.0;
    double ver_gravity = -1.0;
    final int orientation = LayoutOrientation.of(context).orientation;
    final bool isLinearLayout = LayoutOrientation.of(context).isLinearLayout;
    final double par_width = LayoutOrientation.of(context).layout_width;
    final double par_height = LayoutOrientation.of(context).layout_height;
    print(
        "orientation = ${orientation} layout_width = ${par_width} layout_height = ${par_height}");
    if (paddingLeft == null) {
      paddingLeft = 0;
    }
    if (paddingRight == null) {
      paddingRight = 0;
    }
    if (paddingTop == null) {
      paddingTop = 0;
    }
    if (paddingBottom == null) {
      paddingBottom = 0;
    }
    if (marginLeft == null) {
      marginLeft = 0;
    }
    if (marginTop == null) {
      marginTop = 0;
    }
    if (marginRight == null) {
      marginRight = 0;
    }
    if (marginBottom == null) {
      marginBottom = 0;
    }
    if (gravity == null) gravity = 0;

    if ((gravity & Gravity.CENTER) == Gravity.CENTER) {
//      textAlign = TextAlign.center;
      hor_gravity = 0;
      ver_gravity = 0;
      textAlign = TextAlign.center;
    }
    if ((gravity & Gravity.RIGHT) == Gravity.RIGHT) {
//      textAlign = TextAlign.right;
      hor_gravity = 1.0;
      textAlign = TextAlign.right;
    }
    if ((gravity & Gravity.LEFT) == Gravity.LEFT) {
//      textAlign = TextAlign.left;
      hor_gravity = -1.0;
      textAlign = TextAlign.left;
    }
    if ((gravity & Gravity.TOP) == Gravity.TOP) {
      ver_gravity = -1.0;
    }
    if ((gravity & Gravity.BOTTOM) == Gravity.BOTTOM) {
      ver_gravity = 1.0;
    }
    alignment = Alignment(hor_gravity, ver_gravity);
//    if (gravity == Gravity.CENTER) {
//      textAlign = TextAlign.center;
//      alignment = Alignment.center;
//    }
//    if (gravity == Gravity.RIGHT) {
//      textAlign = TextAlign.right;
//      alignment = Alignment.topRight;
//    }
//    if (gravity == Gravity.LEFT) {
//      textAlign = TextAlign.left;
//      alignment = Alignment.topLeft;
//    }
    /*
    if (layout_width == MATCH_PARENT) {
      if(orientation == LinearLayout.HORIZONTAL && par_width == MATCH_PARENT &&
          isLinearLayout){
        layout = Padding(
          padding: EdgeInsets.fromLTRB(
              paddingLeft, paddingTop, paddingRight, paddingBottom),
          child: Align(
            widthFactor: 1,
            heightFactor: 1,
            alignment: alignment,
            child: Text(text, textAlign: textAlign,),
          ),
        );
        if (backgroundColor != null) {
          layout = ColoredBox(color: backgroundColor, child: layout);
        }
        layout = Padding(
          padding: EdgeInsets.fromLTRB(
              marginLeft, marginTop, marginRight, marginBottom),
          child: layout,
        );
        layout = Align(
          widthFactor: 1,
          heightFactor: 1,
          alignment: alignment,
          child: layout,
        );
        layout = Expanded(
          child: layout,
        );


//        layout = Flexible(
//          fit: FlexFit.loose,
//          flex:1,
//          child: Container(
////        color: Colors.red,
//            width: layout_width,
//            height: layout_height,
//            color: backgroundColor,
//            padding: EdgeInsets.fromLTRB(
//                paddingLeft, paddingTop, paddingRight, paddingBottom),
//            margin: EdgeInsets.fromLTRB(
//                marginLeft, marginTop, marginRight, marginBottom),
//            alignment: alignment,
//            child: Align(
//                widthFactor: 1,
//                heightFactor: 1,
//                child: Text(text,textAlign: textAlign,)),
//          ),
//        );
      }
      else
      layout = Container(
//        color: Colors.red,
        width: layout_width,
        height: layout_height,
        color: backgroundColor,
        padding: EdgeInsets.fromLTRB(
            paddingLeft, paddingTop, paddingRight, paddingBottom),
        margin: EdgeInsets.fromLTRB(
            marginLeft, marginTop, marginRight, marginBottom),
        alignment: alignment,
        child: Text(text,textAlign: textAlign,),
      );
//      layout = Padding(
//        padding: EdgeInsets.fromLTRB(
//            paddingLeft, paddingTop, paddingRight, paddingBottom),
//        child: Align(
//          widthFactor: 1,
//          heightFactor: 1,
//          child: Text(text, textAlign: textAlign,),
//        ),
//      );
//      if(backgroundColor!=null){
//          layout = ColoredBox(color: backgroundColor, child: layout);
//      }
//      layout = Padding(
//        padding: EdgeInsets.fromLTRB(
//            marginLeft, marginTop, marginRight, marginBottom),
//        child: layout,
//      );


    }
    else if(layout_height == MATCH_PARENT){
      if(orientation == LinearLayout.VERTICAL && par_height == MATCH_PARENT && isLinearLayout){
        layout = Expanded(
          child: Container(
//        color: Colors.red,
            width: layout_width,
            height: layout_height,
            color: backgroundColor,
            padding: EdgeInsets.fromLTRB(
                paddingLeft, paddingTop, paddingRight, paddingBottom),
            margin: EdgeInsets.fromLTRB(
                marginLeft, marginTop, marginRight, marginBottom),
            alignment: alignment,
            child: Text(text,textAlign: textAlign,),
          ),
        );
      }
      else
        layout = Container(
//        color: Colors.red,
          width: layout_width,
          height: layout_height,
          color: backgroundColor,
          padding: EdgeInsets.fromLTRB(
              paddingLeft, paddingTop, paddingRight, paddingBottom),
          margin: EdgeInsets.fromLTRB(
              marginLeft, marginTop, marginRight, marginBottom),
          alignment: alignment,
          child: Text(text,textAlign: textAlign,),
        );
    }
    else {
      layout = ViewGroup(
//        color: Colors.red,
          layout_width: layout_width,
          layout_height: layout_height,
          backgroundColor: backgroundColor,
          paddingLeft: paddingLeft,
          paddingTop: paddingTop,
paddingRight: paddingRight,
paddingBottom: paddingBottom,
//          padding: EdgeInsets.fromLTRB(
//              paddingLeft, paddingTop, paddingRight, paddingBottom),
//          margin: EdgeInsets.fromLTRB(
//              marginLeft, marginTop, marginRight, marginBottom),
          gravity: gravity,
          child: Text(text,textAlign: textAlign,),
        );
    }
    */
    layout = ViewGroup(
//        color: Colors.red,
      layout_width: layout_width,
      layout_height: layout_height,
      backgroundColor: backgroundColor,
      paddingLeft: paddingLeft,
      paddingTop: paddingTop,
      paddingRight: paddingRight,
      paddingBottom: paddingBottom,
      marginLeft: marginLeft,
      marginTop: marginTop,
      marginRight: marginRight,
      marginBottom: marginBottom,
      layout_gravity: layout_gravity,
//          padding: EdgeInsets.fromLTRB(
//              paddingLeft, paddingTop, paddingRight, paddingBottom),
//          margin: EdgeInsets.fromLTRB(
//              marginLeft, marginTop, marginRight, marginBottom),
      gravity: gravity,
      child: selectable?Text(text,
      // autofocus: true,
      style: TextStyle(
          color: textColor,
          fontSize: textSize,
        ),
        textAlign: textAlign,): Text(
        text,
        style: TextStyle(
          color: textColor,
          fontSize: textSize,
        ),
        textAlign: textAlign,
      ),
    );
    return layout;
  }
}
