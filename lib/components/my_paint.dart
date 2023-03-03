import 'package:flutter/material.dart';
import '../config/helper.dart' as helper;

class MyPaint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    curva1(canvas, size);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }

  void curva1(Canvas canvas, Size size) {
    final paint = Paint();
    paint.color = helper.frontColor;
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 10.0;
    final path = Path();
    path.lineTo(0, size.height * 0.2);
    path.quadraticBezierTo(size.width * 0.2, size.height * 0.12, size.width * 0.5, size.height * 0.2);
    path.quadraticBezierTo( size.width * 0.8, size.height * 0.3, size.width, size.height * 0.2);
    path.lineTo(size.width, 0);
    canvas.drawPath(path, paint); 
  }
}
