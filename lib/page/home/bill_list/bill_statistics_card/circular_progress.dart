import 'package:flutter/material.dart';
import 'dart:math';

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
    final radius = min(size.width, size.height) / 2;
    final center = Offset(radius, radius);
    final outPaint = Paint()
      ..color = const Color.fromARGB(90, 214, 214, 214)
      ..strokeWidth = 10
      // 填充还是轮廓
      ..style = PaintingStyle.stroke;
    canvas.drawCircle(center, radius, outPaint);
    final inPaint = Paint()
      ..color = Colors.white
      ..strokeWidth = 8
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke;
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      pi + pi / 2,
      pi * 0.8,
      false,
      inPaint,
    );
    final laeblTextPainter = TextPainter(
      text: const TextSpan(
          text: "剩余",
          style: TextStyle(
              color: Color.fromARGB(205, 214, 214, 214), fontSize: 12)),
      textDirection: TextDirection.rtl,
      textWidthBasis: TextWidthBasis.longestLine,
    )..layout();
    final valueTextPainter = TextPainter(
      text: const TextSpan(
          text: "50%",
          style: TextStyle(
              color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold)),
      textDirection: TextDirection.rtl,
      textWidthBasis: TextWidthBasis.longestLine,
    )..layout();

    final labelTextCenter = Offset(radius - laeblTextPainter.width / 2,
        radius - valueTextPainter.height - 2);
    final valueTextCenter =
        Offset(radius - valueTextPainter.width / 2, radius + 2);
    laeblTextPainter.paint(canvas, labelTextCenter);
    valueTextPainter.paint(canvas, valueTextCenter);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
