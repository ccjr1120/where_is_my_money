import 'package:flutter/material.dart';
import 'dart:math' as math;

class CircularProgress extends StatelessWidget {
  const CircularProgress({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      child: Container(),
      painter: CircularProgressPainter(),
    );
  }
}

class CircularProgressPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final radius = math.min(size.width, size.height) / 2;
    final center = Offset(radius, radius);
    final paint = Paint()..color = Colors.yellow;
    canvas.drawCircle(center, radius, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
