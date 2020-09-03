import 'dart:math';
import 'package:flutter/material.dart';

class CircleProgress extends CustomPainter {
  double currentProgress;

  CircleProgress(this.currentProgress);
  @override
  void paint(Canvas canvas, Size size) {
    // this is for base circle..
    Paint outerCircle = Paint()
      ..strokeWidth = 10
      ..color = Color(0xFF3B375B)
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    // this is for complete arc..
    Paint completeArc = Paint()
      ..strokeWidth = 10
      ..color = Color(0xFFFF3366)
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    final center = Offset(size.width / 2, (size.height / 2) + 30);

    canvas.drawArc(Rect.fromCenter(center: center, width: 250, height: 250), pi,
        pi, false, outerCircle);

    double angle = currentProgress * pi / 90;
    canvas.drawArc(Rect.fromCenter(center: center, width: 250, height: 250), pi,
        angle, false, completeArc);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
