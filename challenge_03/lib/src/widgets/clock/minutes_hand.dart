import 'dart:math';

import 'package:flutter/material.dart';

class MinutesHand extends StatelessWidget {
  const MinutesHand({
    Key key,
    this.radiusPercentage = 1,
    this.minutes = 0,
    this.color = Colors.black,
  }) : super(key: key);

  final int minutes;
  final double radiusPercentage;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: MinutesHandPainter(
        minutes,
        radiusPercentage: radiusPercentage,
        color: color,
      ),
    );
  }
}

class MinutesHandPainter extends CustomPainter {
  MinutesHandPainter(
    this.minutes, {
    this.radiusPercentage,
    color,
  }) : _minutesHandPaint = Paint()
          ..style = PaintingStyle.stroke
          ..color = color
          ..strokeWidth = 2
          ..strokeCap = StrokeCap.round;

  final int minutes;
  final double radiusPercentage;

  final Paint _minutesHandPaint;

  @override
  void paint(Canvas canvas, Size size) {
    final double offset = size.width / 2;
    final double radius = offset * radiusPercentage;
    final double angle = (2 * pi / 60) * minutes + (-pi / 2);
    final double x = radius * cos(angle);
    final double y = radius * sin(angle);
    final Path path = Path();

    path.moveTo(offset, offset);
    path.lineTo(offset + x, offset + y);

    canvas.drawPath(path, _minutesHandPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
