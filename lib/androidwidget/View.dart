import 'package:flutter/material.dart';

import 'Gravity.dart';
import 'LinearLayout.dart';


final double WRAP_CONTENT = null;
final double MATCH_PARENT = 1.0 / 0.0;

class View extends StatelessWidget{
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
  //暂未实现
  int layout_gravity;
  Color backgroundColor;
  View({this.layout_width,this.layout_height,this.paddingLeft,this.paddingRight,this.paddingTop,this.paddingBottom,this.marginLeft,this.marginTop,this.marginRight,this.marginBottom,this.backgroundColor,this.layout_gravity,this.gravity});

  @override
  Widget build(BuildContext context) {
    Widget layout = null;
    TextAlign textAlign = TextAlign.start;
    Alignment alignment = Alignment.topLeft;
    double hor_gravity = -1.0;
    double ver_gravity = -1.0;
    final int orientation = LayoutOrientation.of(context).orientation;
    final double par_width = LayoutOrientation.of(context).layout_width;
    final double par_height = LayoutOrientation.of(context).layout_height;
    print("orientation = ${orientation} layout_width = ${par_width} layout_height = ${par_height}");
    if(paddingLeft == null){
      paddingLeft = 0;
    }
    if(paddingRight == null){
      paddingRight = 0;
    }
    if(paddingTop == null){
      paddingTop = 0;
    }
    if(paddingBottom == null){
      paddingBottom = 0;
    }
    if(marginLeft == null){
      marginLeft = 0;
    }
    if(marginTop == null){
      marginTop = 0;
    }
    if(marginRight == null){
      marginRight = 0;
    }
    if(marginBottom == null){
      marginBottom = 0;
    }
    if(gravity == null)gravity = 0;

    if ((gravity&Gravity.CENTER) == Gravity.CENTER) {
//      textAlign = TextAlign.center;
      hor_gravity = 0;
      ver_gravity = 0;
      textAlign = TextAlign.center;
    }
    if ((gravity&Gravity.RIGHT) == Gravity.RIGHT) {
//      textAlign = TextAlign.right;
      hor_gravity = 1.0;
      textAlign = TextAlign.right;
    }
    if ((gravity&Gravity.LEFT) == Gravity.LEFT) {
//      textAlign = TextAlign.left;
      hor_gravity = -1.0;
      textAlign = TextAlign.left;
    }
    if((gravity&Gravity.TOP) == Gravity.TOP){
      ver_gravity = -1.0;
    }
    if((gravity&Gravity.BOTTOM) == Gravity.BOTTOM){
      ver_gravity = 1.0;
    }
    alignment = Alignment(hor_gravity,ver_gravity);
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
    if (layout_width == MATCH_PARENT) {
      if(orientation == LinearLayout.HORIZONTAL && par_width == MATCH_PARENT){
        layout = Padding(
          padding: EdgeInsets.fromLTRB(
              paddingLeft, paddingTop, paddingRight, paddingBottom),
          child: Align(
            widthFactor: 1,
            heightFactor: 1,
            alignment: alignment,
            child: SizedBox(),
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
          child: SizedBox(),
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
      if(orientation == LinearLayout.VERTICAL && par_height == MATCH_PARENT){
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
            child: SizedBox(),
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
          child: SizedBox(),
        );
    }
    else {
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
        child: SizedBox(),
      );
    }
    return layout;
  }

  //  @override
//  Widget build(BuildContext context) {
//    Alignment alignment = Alignment.topLeft;
//    Widget layout = null;
//    if(paddingLeft == null){
//      paddingLeft = 0;
//    }
//    if(paddingRight == null){
//      paddingRight = 0;
//    }
//    if(paddingTop == null){
//      paddingTop = 0;
//    }
//    if(paddingBottom == null){
//      paddingBottom = 0;
//    }
//    if(marginLeft == null){
//      marginLeft = 0;
//    }
//    if(marginTop == null){
//      marginTop = 0;
//    }
//    if(marginRight == null){
//      marginRight = 0;
//    }
//    if(marginBottom == null){
//      marginBottom = 0;
//    }
//
//    if (layout_width == WRAP_CONTENT) {
//      layout = Padding(
//        padding: EdgeInsets.fromLTRB(
//            paddingLeft, paddingTop, paddingRight, paddingBottom),
//        child: Align(
//          widthFactor: 1,
//          heightFactor: 1,
//          child: SizedBox(height: layout_height,),
//        ),
//      );
//      if(backgroundColor!=null){
//        layout = ColoredBox(color: backgroundColor, child: layout);
//      }
//      layout = Padding(
//        padding: EdgeInsets.fromLTRB(
//            marginLeft, marginTop, marginRight, marginBottom),
//        child: layout,
//      );
//
//
//    }
//    else {
//      layout = Container(
////        color: Colors.red,
//        width: layout_width,
//        height: layout_height,
//        color: backgroundColor,
//        padding: EdgeInsets.fromLTRB(
//            paddingLeft, paddingTop, paddingRight, paddingBottom),
//        margin: EdgeInsets.fromLTRB(
//            marginLeft, marginTop, marginRight, marginBottom),
//        alignment: alignment,
//
//      );
//    }
//    return layout;
//  }

}