import 'dart:math';

import 'package:flutter/material.dart';

class SecondsHand extends StatelessWidget {
  const SecondsHand({
    Key key,
    this.radiusPercentage = 1,
    this.seconds = 0,
    this.color = Colors.red,
  }) : super(key: key);

  final int seconds;
  final double radiusPercentage;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: SecondsHandPainter(
        seconds,
        radiusPercentage: radiusPercentage,
        color: color,
      ),
    );
  }
}

class SecondsHandPainter extends CustomPainter {
  SecondsHandPainter(
    this.seconds, {
    this.radiusPercentage,
    color,
  }) : _secondsHandPaint = Paint()
          ..style = PaintingStyle.stroke
          ..color = color
          ..strokeWidth = 2
          ..strokeCap = StrokeCap.round;

  final int seconds;
  final double radiusPercentage;

  final Paint _secondsHandPaint;

  @override
  void paint(Canvas canvas, Size size) {
    final double offset = size.width / 2;
    final double radius = offset * radiusPercentage;
    final double angle = (2 * pi / 60) * seconds + (-pi / 2);
    final double x = radius * cos(angle);
    final double y = radius * sin(angle);
    final Path path = Path();

    path.moveTo(offset, offset);
    path.lineTo(offset + x, offset + y);

    canvas.drawPath(path, _secondsHandPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
