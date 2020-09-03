import 'package:flutter/material.dart';

class CircularWidget extends StatelessWidget {
  CircularWidget(
      {this.radius,
      this.color,
      this.top,
      this.bottom,
      this.left,
      this.right,
      this.child,
      this.boxShadow});
  final double radius;
  final Color color;
  final double top;
  final double right;
  final double left;
  final double bottom;
  final Widget child;
  final List<BoxShadow> boxShadow;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      right: right,
      left: left,
      bottom: bottom,
      child: Container(
        width: radius,
        height: radius,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
          boxShadow: boxShadow,
        ),
        child: child,
      ),
    );
  }
}
