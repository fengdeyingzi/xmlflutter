import 'package:flutter/material.dart';


class LayoutGravityHorizontal extends StatelessWidget{
  Widget child;

  LayoutGravityHorizontal({this.child});

  @override
  Widget build(BuildContext context) {
    return  ConstrainedBox(
        constraints: BoxConstraints(
        minWidth: double.infinity,
    ),
    child: Align(
    widthFactor: 1.0,
    heightFactor: 1.0,
      child: child,
    )
    );
  }

}

class LayoutGravityVartical extends StatelessWidget{
  Widget child;

  LayoutGravityVartical({this.child});

  @override
  Widget build(BuildContext context) {
    return  ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: double.infinity,
        ),
        child: Align(
          widthFactor: 1.0,
          heightFactor: 1.0,
          child: child,
        )
    );
  }

}

class LayoutGravity extends StatelessWidget{
  Widget child;

  LayoutGravity({this.child});

  @override
  Widget build(BuildContext context) {
    return  ColoredBox(
      color: Colors.grey[200],
      child: Align(
            child: child,
          ),
    );
  }

}