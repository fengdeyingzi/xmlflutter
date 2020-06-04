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
        child: LinearLayout(
          layout_width:MATCH_PARENT,
          layout_height:MATCH_PARENT,
          backgroundColor:ColorUtil.getString(context, "white"),
          orientation:LinearLayout.VERTICAL,
          gravity:Gravity.CENTER,
          children:[
            ImageView(
              layout_width:120,
              layout_height:120,
              src:DrawableUtil.getDrawable(context, "ic_launcher"),
            ),
            View(
              layout_width:MATCH_PARENT,
              layout_height:24,
            ),
            TextView(
              layout_width:MATCH_PARENT,
              layout_height:WRAP_CONTENT,
              gravity:Gravity.CENTER,
              textSize: 18,
              text:"手机CAPP",
            ),
            View(
              layout_width:MATCH_PARENT,
              layout_height:16,
            ),
            LinearLayout(
              layout_width:WRAP_CONTENT,
              layout_height:WRAP_CONTENT,
              orientation:LinearLayout.HORIZONTAL,
              children:[
//                CheckBox(
//                  layout_width:WRAP_CONTENT,
//                  layout_height:WRAP_CONTENT,
//                ),
                TextView(
                  layout_width:WRAP_CONTENT,
                  layout_height:WRAP_CONTENT,
                  text:"我已阅读并同意",
                ),
                TextView(
                  layout_width:WRAP_CONTENT,
                  layout_height:WRAP_CONTENT,
                  textColor: Colors.blue[300],
                  text:"用户协议",
                ),
                TextView(
                  layout_width:WRAP_CONTENT,
                  layout_height:WRAP_CONTENT,
                  text:"及",
                ),
                TextView(
                  layout_width:WRAP_CONTENT,
                  layout_height:WRAP_CONTENT,
                  textColor: Colors.blue[300],
                  text:"隐私协议",
                ),
              ],
            ),
            View(
              layout_width:32,
              layout_height:16,
            ),
            Button(
              layout_width:240,
              layout_height:WRAP_CONTENT,
              text:"立即使用",
            ),
          ],
        ),
      ),
    );
  }

}
