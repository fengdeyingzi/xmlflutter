import 'package:flutter/material.dart';
import 'package:xmlflutter/androidwidget/ViewGroup.dart';
import 'Gravity.dart';
import 'View.dart';

class LayoutOrientation extends InheritedWidget {
  //设置数据,例如需要传递一个值，一个回调函数,设置的数据必须是final的
  final bool isLinearLayout;
  final int orientation;
  final double layout_width;
  final double layout_height;
  final VoidCallback increaseCount;
  final Widget child;
  LayoutOrientation({this.orientation, this.increaseCount, this.child,this.layout_width, this.layout_height,this.isLinearLayout})
      : super(child: child);
  static LayoutOrientation of(BuildContext context) => context.dependOnInheritedWidgetOfExactType<LayoutOrientation>();
  //是否通知子部件重建,这里需要CountProvider类型(这个名字随意起但是必须和上面保持一致)，才能拿到count
  @override
  bool updateShouldNotify(LayoutOrientation oldWidget) {
    // TODO: implement updateShouldNotify
    return orientation!=oldWidget.orientation;
  }
}

class LinearLayout extends StatefulWidget{
  static final int HORIZONTAL = 0;
  static final int VERTICAL = 1;
  int orientation;
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
  Color backgroundColor;
  List<Widget> children = const <Widget>[];
  LinearLayout({this.orientation,this.layout_width,this.layout_height,this.paddingLeft,this.paddingTop,this.paddingRight,this.paddingBottom,this.gravity,this.layout_gravity, this.children,
  this.backgroundColor});
  @override
  State<StatefulWidget> createState() {
    return new _LinearLayoutState();
  }

}

class _LinearLayoutState extends State<LinearLayout>{
  @override
  Widget build(BuildContext context) {
    Widget layout =  null;
    Alignment alignment = Alignment.topLeft;
    double hor_gravity = -1.0;
    double ver_gravity = -1.0;
    final int orientation = LayoutOrientation.of(context).orientation;
    final bool isLinearLayout = LayoutOrientation.of(context).isLinearLayout;
    final double par_width = LayoutOrientation.of(context).layout_width;
    final double par_height = LayoutOrientation.of(context).layout_height;
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start;
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.start;
    if(widget.layout_width == null){
      widget.layout_width = WRAP_CONTENT;
    }
    if(widget.layout_height == null){
      widget.layout_height = WRAP_CONTENT;
    }
    if(widget.paddingLeft == null){
      widget.paddingLeft = 0;
    }
    if(widget.paddingRight == null){
      widget.paddingRight = 0;
    }
    if(widget.paddingTop == null){
      widget.paddingTop = 0;
    }
    if(widget.paddingBottom == null){
      widget.paddingBottom = 0;
    }
    if(widget.marginLeft == null){
      widget.marginLeft = 0;
    }
    if(widget.marginTop == null){
      widget.marginTop = 0;
    }
    if(widget.marginRight == null){
      widget.marginRight = 0;
    }
    if(widget.marginBottom == null){
      widget.marginBottom = 0;
    }
    if(widget.orientation == null){
      widget.orientation = LinearLayout.HORIZONTAL;
    }
    if(widget.gravity==null){
      widget.gravity = 0;
    }
    if ((widget.gravity&Gravity.CENTER) == Gravity.CENTER) {
//      textAlign = TextAlign.center;
      hor_gravity = 0;
      ver_gravity = 0;
    }
    if ((widget.gravity&Gravity.RIGHT) == Gravity.RIGHT) {
//      textAlign = TextAlign.right;
      hor_gravity = 1.0;
    }
    if ((widget.gravity&Gravity.LEFT) == Gravity.LEFT) {
//      textAlign = TextAlign.left;
      hor_gravity = -1.0;
    }
    if((widget.gravity&Gravity.TOP) == Gravity.TOP){
      ver_gravity = -1.0;
    }
    if((widget.gravity&Gravity.BOTTOM) == Gravity.BOTTOM){
      ver_gravity = 1.0;
    }
    alignment = Alignment(hor_gravity,ver_gravity);
    if(widget.orientation == LinearLayout.HORIZONTAL){
      if (widget.gravity == Gravity.CENTER) {
//      textAlign = TextAlign.center;
        mainAxisAlignment = MainAxisAlignment.center;
        crossAxisAlignment = CrossAxisAlignment.center;
      }
      if (widget.gravity == Gravity.RIGHT) {
//      textAlign = TextAlign.right;
        mainAxisAlignment = MainAxisAlignment.end;
      }
      if (widget.gravity == Gravity.LEFT) {
//      textAlign = TextAlign.left;
        mainAxisAlignment = MainAxisAlignment.start;
      }
      layout =  Row(
        mainAxisAlignment: mainAxisAlignment,
        crossAxisAlignment: crossAxisAlignment,
        mainAxisSize: widget.layout_width==MATCH_PARENT?MainAxisSize.max:MainAxisSize.min,
        children: widget.children,
      );
    }
    else{
      if (widget.gravity == Gravity.CENTER) {
//      textAlign = TextAlign.center;
        mainAxisAlignment = MainAxisAlignment.center;
        crossAxisAlignment = CrossAxisAlignment.center;
      }
      if (widget.gravity == Gravity.RIGHT) {
//      textAlign = TextAlign.right;
        crossAxisAlignment = CrossAxisAlignment.end;
      }
      if (widget.gravity == Gravity.LEFT) {
//      textAlign = TextAlign.left;
        crossAxisAlignment = CrossAxisAlignment.start;
      }
      layout = Column(
          mainAxisSize: widget.layout_height==MATCH_PARENT?MainAxisSize.max: MainAxisSize.min,
          mainAxisAlignment: mainAxisAlignment,
          crossAxisAlignment: crossAxisAlignment,
          children: widget.children,
        );

    }
    /*

    if(widget.layout_width == MATCH_PARENT){
      if (orientation == LinearLayout.HORIZONTAL && par_width == MATCH_PARENT &&
          isLinearLayout) {
        layout = Expanded(
          child: Container(
            alignment: alignment,
            width: widget.layout_width,
            height: widget.layout_height,
            color: widget.backgroundColor,
            padding: EdgeInsets.fromLTRB(
                widget.paddingLeft, widget.paddingTop, widget.paddingRight,
                widget.paddingBottom),
            margin: EdgeInsets.fromLTRB(
                widget.marginLeft, widget.marginTop, widget.marginRight,
                widget.marginBottom),
            child: layout,
          ),
        );
      }
      else{
        layout = Container(
            alignment: alignment,
            width: widget.layout_width,
            height: widget.layout_height,
            color: widget.backgroundColor,
            padding: EdgeInsets.fromLTRB(
                widget.paddingLeft, widget.paddingTop, widget.paddingRight,
                widget.paddingBottom),
            margin: EdgeInsets.fromLTRB(
                widget.marginLeft, widget.marginTop, widget.marginRight,
                widget.marginBottom),
            child: layout,
          );
//        layout = Padding(
//          padding:  EdgeInsets.fromLTRB(widget.paddingLeft, widget.paddingTop, widget.paddingRight, widget.paddingBottom),
//          child: Align(
//            alignment: alignment,
//            widthFactor: 1,
//            heightFactor: 1,
//            child: layout,
//          ),
//        );
//        if(widget.backgroundColor!=null){
//          layout = ColoredBox(color: widget.backgroundColor, child: layout);
//        }
//        layout = Padding(
//          padding: EdgeInsets.fromLTRB(widget.marginLeft, widget.marginTop, widget.marginRight, widget.marginBottom),
//          child: layout,
//        );
      }
    }
    else if(widget.layout_height == MATCH_PARENT){
      if (orientation == LinearLayout.VERTICAL && par_height == MATCH_PARENT &&
          isLinearLayout) {
        layout = Expanded(
          child: Container(
            alignment: alignment,
            width: widget.layout_width,
            height: widget.layout_height,
            color: widget.backgroundColor,
            padding: EdgeInsets.fromLTRB(
                widget.paddingLeft, widget.paddingTop, widget.paddingRight,
                widget.paddingBottom),
            margin: EdgeInsets.fromLTRB(
                widget.marginLeft, widget.marginTop, widget.marginRight,
                widget.marginBottom),
            child: layout,
          ),
        );
      }
      else{
        layout = Padding(
          padding:  EdgeInsets.fromLTRB(widget.paddingLeft, widget.paddingTop, widget.paddingRight, widget.paddingBottom),
          child: Align(
            alignment: alignment,
            widthFactor: 1,
            heightFactor: 1,
            child: layout,
          ),
        );
        if(widget.backgroundColor!=null){
          layout = ColoredBox(color: widget.backgroundColor, child: layout);
        }
        layout = Padding(
          padding: EdgeInsets.fromLTRB(widget.marginLeft, widget.marginTop, widget.marginRight, widget.marginBottom),
          child: layout,
        );
      }
    }
    else{

        layout = Align(
          widthFactor: 1,
          heightFactor: 1,
          alignment: alignment,
          child: layout,
        );
//        layout = ColoredBox(color: Colors.blue[300],child: layout,);
        layout = ViewGroup(
                backgroundColor: widget.backgroundColor,
                layout_width: widget.layout_width,
                layout_height: widget.layout_height,
                paddingLeft: widget.paddingLeft,
                paddingRight: widget.paddingRight,
                paddingTop: widget.paddingTop,
                paddingBottom: widget.paddingBottom,
                marginLeft: widget.marginLeft,
                marginTop: widget.marginTop,
                marginRight: widget.marginRight,
                marginBottom: widget.marginBottom,
                child: layout);
//        if(widget.backgroundColor!=null){
//          layout = ColoredBox(color: widget.backgroundColor, child: layout);
//        }
//        layout = Padding(
//          padding: EdgeInsets.fromLTRB(widget.marginLeft, widget.marginTop, widget.marginRight, widget.marginBottom),
//          child: layout,
//        );




    }

     */

    layout = LayoutOrientation(
        isLinearLayout: true,
        orientation: widget.orientation,
        layout_width: widget.layout_width,
        layout_height: widget.layout_height,
        child: layout,
    );
    layout = ViewGroup(
      layout_width: widget.layout_width,
      layout_height: widget.layout_height,
      layout_gravity: widget.layout_gravity,
      paddingLeft: widget.paddingLeft,
      paddingTop: widget.paddingTop,
      paddingRight: widget.paddingRight,
      paddingBottom: widget.paddingBottom,
      marginTop: widget.marginTop,
      marginBottom: widget.marginBottom,
      marginRight: widget.marginRight,
      marginLeft: widget.marginLeft,
      gravity: widget.gravity,
      backgroundColor: widget.backgroundColor,
      child: layout,
    );
    return layout;
  }

}

