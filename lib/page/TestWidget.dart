
import 'package:flutter/material.dart';
import 'package:xmlflutter/androidwidget/Gravity.dart';
import 'package:xmlflutter/androidwidget/LinearLayout.dart';
import 'package:xmlflutter/androidwidget/TextView.dart';
import 'package:xmlflutter/androidwidget/Uitl.dart';
import 'package:xmlflutter/androidwidget/View.dart';


class TestWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("Test")),
      body: LayoutOrientation(
        child: LinearLayout(
          layout_width:MATCH_PARENT,
          layout_height:MATCH_PARENT,
          orientation:LinearLayout.VERTICAL,
          gravity:Gravity.CENTER,
          children:[
            TextView(
              layout_width:MATCH_PARENT,
              layout_height:WRAP_CONTENT,
              gravity:Gravity.CENTER,
              text:"xml转代码\nhttps://github.com/fengdeyingzi/XmlToCode",
            ),
            TextView(
              layout_width:WRAP_CONTENT,
              layout_height:WRAP_CONTENT,
              text:"风的影子 制作",
            ),
          ],
        ),

      ),
    );
  }

}

