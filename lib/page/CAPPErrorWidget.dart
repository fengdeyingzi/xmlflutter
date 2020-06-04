
import 'package:flutter/material.dart' hide Switch;
import 'package:xmlflutter/androidwidget/Button.dart';
import 'package:xmlflutter/androidwidget/LinearLayout.dart';
import 'package:xmlflutter/androidwidget/TextView.dart';
import 'package:xmlflutter/androidwidget/View.dart';


class CAPPErrorWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("哈哈"),),
      body: SingleChildScrollView(
//        width:double.infinity,
        child:LayoutOrientation(
          orientation: LinearLayout.VERTICAL,
          child: LinearLayout(
            layout_width:MATCH_PARENT,
            layout_height:WRAP_CONTENT,
            orientation:LinearLayout.VERTICAL,
            children:[
              TextView(
                layout_width:WRAP_CONTENT,
                layout_height:WRAP_CONTENT,
                text:"错误日志：",
              ),
              TextView(
                layout_width:MATCH_PARENT,
                layout_height:WRAP_CONTENT,
                text:"无",
              ),
              TextView(
                layout_width:WRAP_CONTENT,
                layout_height:WRAP_CONTENT,
                text:"初始化失败可能是由于手机网络连接不畅，或者是安全管理类软件禁止了本软件联网。",
              ),
              TextView(
                layout_width:WRAP_CONTENT,
                layout_height:WRAP_CONTENT,
                text:"你可以：",
              ),
              Button(
                layout_width:MATCH_PARENT,
                layout_height:WRAP_CONTENT,
                text:"跳过初始化",
              ),
              TextView(
                layout_width:WRAP_CONTENT,
                layout_height:WRAP_CONTENT,
                text:"或：由于时间因素，软件版本过旧，导致无法正常运行，或不可抗力等因素导致APP无法进入主界面。",
              ),
              TextView(
                layout_width:WRAP_CONTENT,
                layout_height:WRAP_CONTENT,
                text:"你可以：",
              ),
              Button(
                layout_width:MATCH_PARENT,
                layout_height:WRAP_CONTENT,
                text:"检查更新",
              ),
              LinearLayout(
                layout_width:MATCH_PARENT,
                layout_height:WRAP_CONTENT,
                orientation:LinearLayout.VERTICAL,
                children:[
                  TextView(
                    layout_width:WRAP_CONTENT,
                    layout_height:WRAP_CONTENT,
                    text:"若以上方法都不能解决问题？",
                  ),
                  TextView(
                    layout_width:WRAP_CONTENT,
                    layout_height:WRAP_CONTENT,
                    text:"你可以：",
                  ),
                  Button(
                    layout_width:MATCH_PARENT,
                    layout_height:WRAP_CONTENT,
                    text:"联系QQ群",
                  ),
                ],
              ),
              TextView(
                layout_width:WRAP_CONTENT,
                layout_height:WRAP_CONTENT,
                text:"为你带来的不便非常抱歉。",
              ),
              TextView(
                layout_width:WRAP_CONTENT,
                layout_height:WRAP_CONTENT,
                text:"你可以：",
              ),
              Button(
                layout_width:MATCH_PARENT,
                layout_height:WRAP_CONTENT,
                text:"反馈问题",
              ),
            ],
          ),
        ),
      ),
    );
  }

}

