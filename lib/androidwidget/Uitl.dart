
import 'package:flutter/material.dart';


class ColorUtil {

  static Color getString(BuildContext context, String text){
    if(text == "colorPrimary"){
      return Color(0xff60a0f0);
    }
    return Colors.white;
  }
}


class DrawableUtil{
  static String getDrawable(BuildContext context, String text){
    if(!text.endsWith(".png") && !text.endsWith(".PNG") && !text.endsWith(".jpg") && !text.endsWith(".JPG")){
      return "assets/${text}.png";
    }
    return "assets/${text}";
  }
}

class StringUtil{
  static String getString(BuildContext context, String text){
    return text;
  }
}