import 'package:flutter/material.dart';

import 'ViewGroup.dart';

class ScrollView extends StatelessWidget{
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
  Widget child = SizedBox();

  ScrollView({this.layout_width,this.layout_height,this.paddingLeft,this.paddingRight,this.paddingTop,this.paddingBottom,this.marginLeft,this.marginTop,this.marginRight,this.marginBottom,this.backgroundColor,this.child});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: ViewGroup(
        layout_width: layout_width,
        layout_height: layout_height,
        paddingLeft: paddingLeft,
        paddingTop: paddingTop,
        paddingRight: paddingRight,
        paddingBottom: paddingBottom,
        marginLeft: marginLeft,
        marginTop: marginTop,
        marginRight: marginRight,
        marginBottom: marginBottom,
        backgroundColor: backgroundColor,
        child: child,
      ),
    );



  }

}



class HorizontalScrollView extends StatelessWidget{
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
  Widget child = SizedBox();

  HorizontalScrollView({this.layout_width,this.layout_height,this.paddingLeft,this.paddingRight,this.paddingTop,this.paddingBottom,this.marginLeft,this.marginTop,this.marginRight,this.marginBottom,this.backgroundColor,this.child});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: ViewGroup(
        layout_width: layout_width,
        layout_height: layout_height,
        paddingLeft: paddingLeft,
        paddingTop: paddingTop,
        paddingRight: paddingRight,
        paddingBottom: paddingBottom,
        marginLeft: marginLeft,
        marginTop: marginTop,
        marginRight: marginRight,
        marginBottom: marginBottom,
        backgroundColor: backgroundColor,
        child: child,
      ),
    );



  }

}