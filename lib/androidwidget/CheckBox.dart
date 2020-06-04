import 'package:flutter/material.dart' as material;

import 'ViewGroup.dart';


class AppCompatCheckBox extends material.StatelessWidget{
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
  bool isChecked;
  //暂未实现
  int layout_gravity;
  material.Color backgroundColor;
  String text;
  material.ValueChanged<bool> onChanged;


  AppCompatCheckBox({this.layout_width,this.layout_height,this.paddingLeft,this.paddingTop,this.paddingRight,this.paddingBottom,this.marginLeft,this.marginTop,this.marginRight, this.marginBottom,this.isChecked,this.backgroundColor,this.onChanged,this.text});


  @override
  material.Widget build(material.BuildContext context) {
    material.Widget layout = material.Checkbox(
      value: isChecked??false,
      onChanged: onChanged,
    );
    if(text != null){
      layout = material.Row(children: [
        layout, material.Text(text, style: material.TextStyle(
          fontSize: 14
        ),)
      ],);
    }
    return ViewGroup(
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
      child: layout,);
  }

}

class CheckBox extends material.StatelessWidget{
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
  bool isChecked;
  //暂未实现
  int layout_gravity;
  material.Color backgroundColor;
  material.ValueChanged<bool> onChanged;


  CheckBox({this.layout_width,this.layout_height,this.paddingLeft,this.paddingTop,this.paddingRight,this.paddingBottom,this.marginLeft,this.marginTop,this.marginRight, this.marginBottom,this.isChecked,this.backgroundColor,this.onChanged});


  @override
  material.Widget build(material.BuildContext context) {
    return ViewGroup(
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
      child: material.Checkbox(
      value: isChecked??false,
      onChanged: onChanged,
    ),);
  }

}