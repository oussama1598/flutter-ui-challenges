import 'dart:math';

import 'package:flutter/material.dart';

class HoursHand extends StatelessWidget {
  const HoursHand({
    Key key,
    this.radiusPercentage = 1,
    this.hours = 0,
    this.color = Colors.black,
  }) : super(key: key);

  final Color color;
  final int hours;
  final double radiusPercentage;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: HoursHandPainter(
        hours,
        radiusPercentage: radiusPercentage,
        color: color,
      ),
    );
  }
}

class HoursHandPainter extends CustomPainter {
  HoursHandPainter(
    this.hours, {
    this.radiusPercentage,
    color,
  }) : _hoursHandPaint = Paint()
          ..style = PaintingStyle.stroke
          ..color = color
          ..strokeWidth = 2
          ..strokeCap = StrokeCap.round;

  final int hours;
  final double radiusPercentage;

  final Paint _hoursHandPaint;

  @override
  void paint(Canvas canvas, Size size) {
    final double offset = size.width / 2;
    final double radius = offset * radiusPercentage;
    final double angle = (2 * pi / 12) * hours + (-pi / 2);
    final double x = radius * cos(angle);
    final double y = radius * sin(angle);
    final Path path = Path();

    path.moveTo(offset, offset);
    path.lineTo(offset + x, offset + y);

    canvas.drawPath(path, _hoursHandPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
