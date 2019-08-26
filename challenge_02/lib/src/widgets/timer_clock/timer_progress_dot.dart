import 'dart:math';

import 'package:flutter/material.dart';

class TimerProgressDot extends StatelessWidget {
  const TimerProgressDot({
    Key key,
    this.progress = 0,
    this.color = Colors.red,
  }) : super(key: key);

  final Color color;
  final double progress;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: TimerProgressDotPainter(
        color: color,
        progress: progress,
      ),
    );
  }
}

class TimerProgressDotPainter extends CustomPainter {
  TimerProgressDotPainter({
    this.color,
    this.progress,
  }) : _timerProgressDotPaint = Paint()..color = color;

  final Color color;
  final double progress;

  final Paint _timerProgressDotPaint;

  @override
  void paint(Canvas canvas, Size size) {
    final double offset = size.width / 2;
    final double angle = 2 * pi * progress;
    final double x = offset * cos(angle);
    final double y = offset * sin(angle);

    canvas.drawCircle(
      Offset(offset + x, offset + y),
      4,
      _timerProgressDotPaint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
