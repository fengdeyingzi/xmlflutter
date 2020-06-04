
import 'package:flutter/material.dart';
import 'package:xmlflutter/androidwidget/Gravity.dart';

import 'LinearLayout.dart';
import 'View.dart';


class FrameLayout extends StatelessWidget {


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
  List<Widget> children = const <Widget>[];
  
  FrameLayout({this.layout_width,this.layout_height,this.paddingLeft,this.paddingRight,this.paddingTop,this.paddingBottom,this.marginTop,this.marginBottom,this.marginRight,this.marginLeft,this.children,this.backgroundColor,this.layout_gravity,this.gravity});

  @override
  Widget build(BuildContext context) {
    Alignment alignment = Alignment.topLeft;
    Widget layout = null;
    int orientation = LinearLayout.VERTICAL;
    double o_width = 0;
    double o_height = 0;
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
    if(gravity == Gravity.CENTER){
      alignment = Alignment.center;
    }

    if (layout_width == MATCH_PARENT) {
      orientation = LinearLayout.HORIZONTAL;
      o_width = MATCH_PARENT;
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
        child: Stack(fit: StackFit.loose,
            alignment: alignment,
            children: children),
      );



    }
    else if(layout_height == MATCH_PARENT){
      orientation = LinearLayout.VERTICAL;
      o_height = MATCH_PARENT;
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
        child: Stack(fit: StackFit.loose,
            alignment: alignment,
            children: children),
      );
    }
    else {
      layout = Padding(
        padding: EdgeInsets.fromLTRB(
            paddingLeft, paddingTop, paddingRight, paddingBottom),
        child: Align(
          widthFactor: 1,
          heightFactor: 1,
          child:Stack(fit: StackFit.loose,alignment: alignment,children: children),
        ),
      );
      if(backgroundColor!=null){
        layout = ColoredBox(color: backgroundColor, child: layout);
      }
//      layout = Stack(fit: StackFit.loose,children: children);
      layout = Padding(
        padding: EdgeInsets.fromLTRB(
            marginLeft, marginTop, marginRight, marginBottom),
        child: layout,
      );
    }
    if(layout_height == MATCH_PARENT){
      orientation = LinearLayout.VERTICAL;
      o_height = MATCH_PARENT;
    }
    return LayoutOrientation(
        isLinearLayout: false,
        orientation: orientation,
        layout_width: o_width,
        layout_height: o_height,
        child: layout);
  }
  
}

