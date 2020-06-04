import 'package:flutter/material.dart' as material;

class Switch extends material.StatelessWidget {
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
  material.Color backgroundColor;
  material.ValueChanged<bool> onChanged;
  bool value;

  Switch({
    this.layout_width,
    this.layout_height,
    this.paddingLeft,
    this.paddingRight,
    this.paddingTop,
    this.paddingBottom,
    this.marginLeft,
    this.marginTop,
    this.marginRight,
    this.marginBottom,
    this.gravity,
    this.layout_gravity,
    this.backgroundColor,
  });

  @override
  material.Widget build(material.BuildContext context) {
    return material.Switch(
      onChanged: (bool value) {
        if(onChanged!=null)
        onChanged(value);
      },
      value: value??false,
    );
  }
}
