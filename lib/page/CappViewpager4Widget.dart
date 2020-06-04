import 'package:xmlflutter/androidwidget/Button.dart';
import 'package:xmlflutter/androidwidget/Gravity.dart';
import 'package:xmlflutter/androidwidget/ImageView.dart';
import 'package:xmlflutter/androidwidget/LinearLayout.dart';


import 'package:flutter/material.dart';
import 'package:xmlflutter/androidwidget/TextView.dart';
import 'package:xmlflutter/androidwidget/Uitl.dart';
import 'package:xmlflutter/androidwidget/View.dart';


class CappViewpager4Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("hello"),),
      body: LayoutOrientation(
        orientation: LinearLayout.VERTICAL,
        child: Container(
          width:double.infinity,
          height: double.infinity,
          child: SingleChildScrollView(

             scrollDirection: Axis.vertical,
            child: ColoredBox(
              color: Colors.grey,
              child: Column(
                children: <Widget>[
                  ColoredBox(
                    color: Colors.green,
//                  width: double.infinity,
//                  height: double.,
                    child: Text("test")
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

}
