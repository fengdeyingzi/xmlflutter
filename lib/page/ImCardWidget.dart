
import 'package:flutter/material.dart' hide Switch;
import 'package:xmlflutter/androidwidget/Button.dart';
import 'package:xmlflutter/androidwidget/CircleImageView.dart';
import 'package:xmlflutter/androidwidget/FrameLayout.dart';
import 'package:xmlflutter/androidwidget/Gravity.dart';
import 'package:xmlflutter/androidwidget/ImageView.dart';
import 'package:xmlflutter/androidwidget/LinearLayout.dart';
import 'package:xmlflutter/androidwidget/Switch.dart';
import 'package:xmlflutter/androidwidget/TextUtils.dart';
import 'package:xmlflutter/androidwidget/TextView.dart';
import 'package:xmlflutter/androidwidget/Uitl.dart';
import 'package:xmlflutter/androidwidget/View.dart';


class ImCardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("IMCard"),),
      body: LayoutOrientation(
        isLinearLayout: true,
        layout_width: MATCH_PARENT,
        layout_height: MATCH_PARENT,
        orientation: LinearLayout.VERTICAL,
        child: LinearLayout(
          layout_width:MATCH_PARENT,
          layout_height:MATCH_PARENT,
          orientation:LinearLayout.VERTICAL,
          children:[
            LinearLayout(
              layout_width:MATCH_PARENT,
              layout_height:WRAP_CONTENT,
              backgroundColor:ColorUtil.getString(context, "colorPrimary"),
              orientation:LinearLayout.VERTICAL,
              children:[
                FrameLayout(
                  layout_width:MATCH_PARENT,
                  layout_height:WRAP_CONTENT,
//gravity: Gravity.CENTER,
//                  backgroundColor: Colors.red,
                  children:[
                    /*
                    ConstrainedBox(
                      constraints: BoxConstraints(
                        minHeight: 50
                      ),
                    child:Align(
                        widthFactor: 1,
                        heightFactor: 1,
                        child: ColoredBox(
                          color: Colors.red,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Image.asset("assets/toolbar_back.png",width: 22,height: 22,),
                              Text("toolbar_back",style: TextStyle(
                                color: Colors.white
                              ),)
                            ],
                          ),
                      ),

                    ),
                    ),*/

                    LinearLayout(
                      layout_width:WRAP_CONTENT,
                      layout_height:48,
                      orientation:LinearLayout.HORIZONTAL,
                      gravity:Gravity.CENTER,
                      children:[
                        ColoredBox(
                          color: Colors.green,
                          child: Align(
                            widthFactor: 1,
                            heightFactor: 1,
                            child: Row(
//                          layout_width:WRAP_CONTENT,
//                          layout_height:WRAP_CONTENT,
//                          orientation:LinearLayout.HORIZONTAL,
//                          backgroundColor: Colors.green,
                              children:[
                                ImageView(
//                                  backgroundColor: Colors.yellow,
                                  layout_width:22,
                                  layout_height:22,
                                  src:DrawableUtil.getDrawable(context, "toolbar_back"),
                                ),
                                TextView(
                                  layout_width:WRAP_CONTENT,
                                  layout_height:WRAP_CONTENT,
//                                  backgroundColor: Colors.yellow,
                                  text:StringUtil.getString(context, "toolbar_back"),
                                ),
                              ],
                            ),
                          ),
                        ),
                        View(
                          layout_width:WRAP_CONTENT,
                          layout_height:WRAP_CONTENT,
                        ),
                      ],
                    ),


                    TextView(
                      layout_width:MATCH_PARENT,
                      layout_height:WRAP_CONTENT,
                      ellipsize:TextUtils.TruncateAt_END,
                      gravity:Gravity.CENTER,
                      backgroundColor: Colors.yellow,
                      layout_gravity:Gravity.CENTER,
                      text:StringUtil.getString(context, "title_imcard"),
                      singleLine:true,
                    ),
                  ],
                ),
              ],
            ),
            LinearLayout(
              layout_width:MATCH_PARENT,
              layout_height:WRAP_CONTENT,
//            backgroundColor:Color(value),
              orientation:LinearLayout.HORIZONTAL,
              children:[
                CircleImageView(
                  layout_width:65,
                  layout_height:65,
                  src:DrawableUtil.getDrawable(context, "nim_avatar_default"),
                ),
                LinearLayout(
                  layout_width:MATCH_PARENT,
                  layout_height:WRAP_CONTENT,
                  orientation:LinearLayout.VERTICAL,
                  children:[
                    TextView(
                      layout_width:WRAP_CONTENT,
                      layout_height:WRAP_CONTENT,
                      minHeight:38,
                      text:"公司名字",
                    ),
                    TextView(
                      layout_width:WRAP_CONTENT,
                      layout_height:WRAP_CONTENT,
                      text:"账号：******",
                    ),
                  ],
                ),
              ],
            ),
            View(
              layout_width:MATCH_PARENT,
              layout_height:65,
            ),
            LinearLayout(
              layout_width:MATCH_PARENT,
              layout_height:48,
              backgroundColor:Colors.green,
              orientation:LinearLayout.HORIZONTAL,

//              gravity:Gravity.CENTER,
              children:[
                TextView(
                  layout_width:MATCH_PARENT,
                  layout_height:WRAP_CONTENT,
                  layout_gravity: Gravity.CENTER,
                  text:StringUtil.getString(context, "idcard_message"),
                ),
                Switch(
                  layout_width:WRAP_CONTENT,
                  layout_height:WRAP_CONTENT,
                ),
              ],
            ),
            LinearLayout(
              layout_width:MATCH_PARENT,
              layout_height:48,
              backgroundColor:ColorUtil.getString(context, "white"),
              orientation:LinearLayout.HORIZONTAL,
//              gravity:Gravity.CENTER,
              children:[
                TextView(
                  layout_width:MATCH_PARENT,
                  layout_height:WRAP_CONTENT,
                  layout_gravity: Gravity.CENTER,
                  text:StringUtil.getString(context, "idcard_blacklist"),
                ),
                Switch(
                  layout_width:WRAP_CONTENT,
                  layout_height:WRAP_CONTENT,
                ),
              ],
            ),
            View(
              layout_width:MATCH_PARENT,
              layout_height:32,
            ),
            LinearLayout(
              layout_width:MATCH_PARENT,
              layout_height:WRAP_CONTENT,
              orientation:LinearLayout.VERTICAL,
              children:[
                Button(
                  layout_width:MATCH_PARENT,
                  layout_height:WRAP_CONTENT,
                  background:DrawableUtil.getDrawable(context, "button_round_message"),
                  text:StringUtil.getString(context, "btn_chat"),
                ),
                Button(
                  layout_width:MATCH_PARENT,
                  layout_height:WRAP_CONTENT,
                  background:DrawableUtil.getDrawable(context, "button_round_delete"),
                  text:StringUtil.getString(context, "btn_addfrand"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

}

