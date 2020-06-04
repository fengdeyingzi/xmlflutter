
import 'package:flutter/material.dart';
import 'package:xmlflutter/androidwidget/FrameLayout.dart';


class FrameWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Material(
        type: MaterialType.transparency,
        child: Scaffold(
          appBar: AppBar(title: Text("test frameLayout"),),
          body: Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.green,
            child: Column(
              children: <Widget>[
                Container(
                  height: 300,
                  width: double.infinity,
                  color: Colors.yellow,
                  child: Stack(
                    fit: StackFit.loose,
                    alignment: Alignment.topRight,
                    children: <Widget>[
                      ColoredBox(color: Colors.red, child: Text("text text")),
                      Text("text text")
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 200,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      ConstrainedBox(
                          constraints: BoxConstraints(
                            minWidth: 0,
                            minHeight: double.infinity,
                          ),
                          child: Align(
                              widthFactor: 1.0,
                              heightFactor: 1.0,
                              child: ColoredBox(color: Colors.red,child: Text("this")))),
                    ],
                  ),
                )
              ],
            )
          ),
        )
    );
    }

}

