
import 'package:flutter/material.dart';
import 'package:xmlflutter/androidwidget/ViewGroup.dart';

import 'View.dart';


class Button extends StatelessWidget {
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
  String background;
  String text;
  VoidCallback onPressed;

  Button({this.layout_width,this.layout_height,this.paddingLeft,this.paddingRight,this.paddingTop,this.paddingBottom,this.marginLeft,this.marginTop,this.marginRight,this.marginBottom,this.gravity,this.layout_gravity,this.backgroundColor,this.background,this.text,this.onPressed});

  @override
  Widget build(BuildContext context) {
//    Alignment alignment = Alignment.topLeft;
    Widget layout = null;
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
    layout = RaisedButton(
      color: backgroundColor,
      elevation: backgroundColor==null?2:0,
      focusElevation: backgroundColor==null?3:0,
      highlightElevation: backgroundColor==null?3:0,
        splashColor:backgroundColor??null,
      highlightColor: backgroundColor??Colors.transparent,
      onPressed: () {
        if(onPressed!=null) onPressed();
      },
      child: Text(text),
    );
    if(layout_width == MATCH_PARENT || layout_height == MATCH_PARENT){
      layout = ConstrainedBox(
        constraints: BoxConstraints(
          minWidth: layout_width??0,
          minHeight: layout_height??0
        ),
        child: layout,
      );
    }

    /*
    if (layout_width == WRAP_CONTENT) {
      layout = Padding(
        padding: EdgeInsets.fromLTRB(
            paddingLeft+5, paddingTop, paddingRight+5, paddingBottom),
        child: Align(
          widthFactor: 1,
          heightFactor: 1,
          child: RaisedButton(
            onPressed: () {
              if(onPressed!=null) onPressed();
            },
            child: Text(text),
          ),
        ),
      );
      if(backgroundColor!=null){
        layout = ColoredBox(color: backgroundColor, child: layout);
      }
      layout = Padding(
        padding: EdgeInsets.fromLTRB(
            marginLeft, marginTop, marginRight, marginBottom),
        child: layout,
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
//        alignment: alignment,
        child: RaisedButton(
          onPressed: () {
            if(onPressed!=null) onPressed();
          },
          child: Text(text),
        ),
      );
    }
    return layout;
     */
    return ViewGroup(
      layout_width: layout_width,
      layout_height: layout_height,
      paddingLeft: paddingLeft+4,
      paddingRight: paddingRight+4,
      paddingTop: paddingTop,
      paddingBottom: paddingBottom,
      marginTop: marginTop,
      marginLeft: marginLeft,
      marginRight: marginRight,
      marginBottom: marginBottom,
      layout_gravity: layout_gravity,
      backgroundColor: backgroundColor,
      child: layout,
    );
  }


}

