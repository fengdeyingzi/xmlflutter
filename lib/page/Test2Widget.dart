import 'package:flutter/material.dart' hide Switch,ScrollView;
import '../androidwidget/CheckBox.dart';
import '../androidwidget/EditText.dart';

import '../androidwidget/Button.dart';
import '../androidwidget/Gravity.dart';
import '../androidwidget/LinearLayout.dart';
import '../androidwidget/LinearLayout.dart';
import '../androidwidget/TextView.dart';
import '../androidwidget/View.dart';
import '../androidwidget/View.dart';
import '../androidwidget/ScrollView.dart';


class Test2Widget extends StatefulWidget{
  @override
  _Test2WidgetState createState() => _Test2WidgetState();
}

class _Test2WidgetState extends State<Test2Widget> {
  bool isCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("test2"),),
    body: LayoutOrientation(
    layout_width: MATCH_PARENT,
    layout_height: MATCH_PARENT,
    orientation: LinearLayout.VERTICAL,
    child:   LinearLayout(
      layout_width:MATCH_PARENT,
      layout_height:MATCH_PARENT,
      // backgroundColor:Color(value),
      orientation:LinearLayout.VERTICAL,
      children:[
    LinearLayout(
        layout_width:MATCH_PARENT,
        layout_height:WRAP_CONTENT,
        orientation:LinearLayout.VERTICAL,
        gravity:Gravity.TOP,
        children:[
      ScrollView(
          layout_width:MATCH_PARENT,
          layout_height:MATCH_PARENT,
          child:        LinearLayout(
            layout_width:MATCH_PARENT,
            layout_height:WRAP_CONTENT,
            orientation:LinearLayout.VERTICAL,
            gravity:Gravity.TOP,
            children:[
          TextView(
              layout_width:WRAP_CONTENT,
              layout_height:WRAP_CONTENT,
              selectable:true,
              text:"请输入文本",
          ),
          TextView(
              layout_width:WRAP_CONTENT,
              layout_height:WRAP_CONTENT,
              selectable:true,
              text:"",
          ),
          LinearLayout(
              layout_width:MATCH_PARENT,
              layout_height:WRAP_CONTENT,
              orientation:LinearLayout.HORIZONTAL,
              children:[
            AppCompatCheckBox(
                layout_width:WRAP_CONTENT,
                layout_height:WRAP_CONTENT,
                isChecked: isCheck,
                onChanged: (value){
                  setState(() {
                    isCheck = value;
                  });
                },
                text:"不转换英文字符",
            ),
              ],
          ),
          EditText(
              layout_width:MATCH_PARENT,
              layout_height:WRAP_CONTENT,
              gravity:Gravity.TOP,
              singleLine:false,
              minLines:0,
          ),
            ],
        ),
      ),
      HorizontalScrollView(
          layout_width:WRAP_CONTENT,
          layout_height:WRAP_CONTENT,
          child:        LinearLayout(
            layout_width:WRAP_CONTENT,
            layout_height:WRAP_CONTENT,
            orientation:LinearLayout.HORIZONTAL,
            children:[
          Button(
              layout_width:WRAP_CONTENT,
              layout_height:WRAP_CONTENT,
              text:"转换为gb",
          ),
          Button(
              layout_width:WRAP_CONTENT,
              layout_height:WRAP_CONTENT,
              text:"转换为un",
          ),
          Button(
              layout_width:WRAP_CONTENT,
              layout_height:WRAP_CONTENT,
              text:"转换为utf",
          ),
          Button(
              layout_width:WRAP_CONTENT,
              layout_height:WRAP_CONTENT,
              text:"uni小端",
          ),
          Button(
              layout_width:WRAP_CONTENT,
              layout_height:WRAP_CONTENT,
              text:"转换为U码",
          ),
          Button(
              layout_width:WRAP_CONTENT,
              layout_height:WRAP_CONTENT,
              text:"U码逆转换",
          ),
          Button(
              layout_width:WRAP_CONTENT,
              layout_height:WRAP_CONTENT,
              text:"URL转码",
          ),
          Button(
              layout_width:WRAP_CONTENT,
              layout_height:WRAP_CONTENT,
              text:"URL解码",
          ),
          Button(
              layout_width:WRAP_CONTENT,
              layout_height:WRAP_CONTENT,
              text:"换行转<br>",
          ),
          Button(
              layout_width:WRAP_CONTENT,
              layout_height:WRAP_CONTENT,
              text:"删除<br>",
          ),
          Button(
              layout_width:WRAP_CONTENT,
              layout_height:WRAP_CONTENT,
              text:"字符替换",
          ),
          Button(
              layout_width:WRAP_CONTENT,
              layout_height:WRAP_CONTENT,
              text:"去除非法字符",
          ),
          Button(
              layout_width:WRAP_CONTENT,
              layout_height:WRAP_CONTENT,
              text:"去除行号",
          ),
          Button(
              layout_width:WRAP_CONTENT,
              layout_height:WRAP_CONTENT,
              text:"转换为繁体",
          ),
          Button(
              layout_width:WRAP_CONTENT,
              layout_height:WRAP_CONTENT,
              text:"转换为简体",
          ),
          Button(
              layout_width:WRAP_CONTENT,
              layout_height:WRAP_CONTENT,
              text:"转换为大写",
          ),
          Button(
              layout_width:WRAP_CONTENT,
              layout_height:WRAP_CONTENT,
              text:"转换为小写",
          ),
            ],
        ),
      ),
        ],
    ),
      ],
  ),

    ),
    );
  }
}