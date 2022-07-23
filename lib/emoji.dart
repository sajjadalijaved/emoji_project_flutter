import 'dart:math';

import 'package:flutter/material.dart';

class SmilyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final width = size.width;
    final height = size.height;
    final center = Offset(width / 2, height / 2);
    final radius = min(width, height) / 2;
    final eyesRadius = radius * 0.2;
    final eyeMargin = radius * 0.4;
    final eyesBallRadius = eyesRadius * 0.5;
    final mouthRadius = radius * 0.5;
    final mouthMargin = radius * 0.1;
    final eyeBallMargin = eyesRadius * 0.1;
    Paint facePaint = Paint()..color = Colors.yellow;
    Paint eyesPaint = Paint()..color = Colors.pink;
    Paint eyesBallPaint = Paint()..color = Colors.white;

    // Smily Face Paint
    canvas.drawCircle(center, radius, facePaint);
    // Left Eye
    canvas.drawCircle(Offset(center.dx - eyeMargin, center.dy - eyeMargin),
        eyesRadius, eyesPaint);
    // Left Eye Ball
    canvas.drawCircle(
        Offset(center.dx - eyeMargin, center.dy - eyeMargin + eyeBallMargin),
        eyesBallRadius,
        eyesBallPaint);

    // Right Eye
    canvas.drawCircle(Offset(center.dx + eyeMargin, center.dy - eyeMargin),
        eyesRadius, eyesPaint);
    // Right Eye Ball
    canvas.drawCircle(
        Offset(center.dx + eyeMargin, center.dy - eyeMargin + eyeBallMargin),
        eyesBallRadius,
        eyesBallPaint);
    // Mouth aka Bouthar
    canvas.drawArc(
        Rect.fromCircle(
            center: Offset(center.dx, center.dy + mouthMargin),
            radius: mouthRadius),
        0,
        pi,
        true,
        eyesPaint);
  }

  @override
  bool shouldRepaint(SmilyPainter oldDelegate) => true;

  @override
  bool shouldRebuildSemantics(SmilyPainter oldDelegate) => true;
}
