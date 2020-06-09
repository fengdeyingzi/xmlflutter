import 'package:flutter/material.dart';

import 'ViewGroup.dart';

class EditText extends StatelessWidget {
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
  String hint;
  Color hintTextColor;
  int minLines;
  EditText(
      {this.layout_width,
      this.layout_height,
      this.text,
      this.paddingLeft,
      this.paddingTop,
      this.paddingRight,
      this.paddingBottom,
      this.marginLeft,
      this.marginTop,
      this.marginRight,
      this.marginBottom,
      this.gravity,
      this.backgroundColor,
      this.textColor,
      this.textSize,
      this.selectable,
      this.singleLine,
      this.minHeight,
      this.maxHeight,
      this.minWidget,
      this.maxWidget,
      this.minLines,
      this.hintTextColor});

  @override
  Widget build(BuildContext context) {
    Widget layout = TextField(
      style: TextStyle(
        fontSize: textSize,
        color: textColor,
        textBaseline: TextBaseline.alphabetic, //用于提示文字对齐
      ),
      decoration: InputDecoration(
        isDense: true, //重要 用于编辑框对齐
        contentPadding: EdgeInsets.zero,
        hintText: hint,
        // border: InputBorder.none, //去除编辑框下划线
        hintStyle: TextStyle(
            fontSize: textSize,
            textBaseline: TextBaseline.alphabetic, //用于提示文字对齐
            color: hintTextColor),
      ),
    );
    return ViewGroup(
      layout_width: layout_width,
      layout_height: layout_height,
      paddingLeft: paddingLeft??0.0+4,
      paddingTop: paddingTop,
      paddingRight: paddingRight??0.0+4,
      paddingBottom: paddingBottom,
      marginLeft: marginLeft,
      marginTop: marginTop,
      marginRight: marginRight,
      marginBottom: marginBottom,
      backgroundColor: backgroundColor,
      child: layout,
    );
  }
}
