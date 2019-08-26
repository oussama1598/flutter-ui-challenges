import 'dart:math';

import 'package:flutter/material.dart';

class TimerProgressBar extends StatelessWidget {
  const TimerProgressBar({
    Key key,
    this.progress = 0,
    this.color = Colors.red,
  }) : super(key: key);

  final Color color;
  final double progress;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: TimerProgressBarPainter(
        color: color,
        progress: progress,
      ),
    );
  }
}

class TimerProgressBarPainter extends CustomPainter {
  TimerProgressBarPainter({
    this.color,
    this.progress,
  }) : _timerProgressBarPaint = Paint()
          ..color = color
          ..style = PaintingStyle.stroke
          ..strokeCap = StrokeCap.round
          ..strokeWidth = 3;

  final Color color;
  final double progress;

  final Paint _timerProgressBarPaint;

  @override
  void paint(Canvas canvas, Size size) {
    final double offset = size.width / 2;

    canvas.drawArc(
      Rect.fromCircle(
        radius: offset,
        center: Offset(offset, offset),
      ),
      0,
      2 * pi * progress,
      false,
      _timerProgressBarPaint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
