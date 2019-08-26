import 'dart:math';

import 'package:flutter/material.dart';

class HoursDashes extends StatelessWidget {
  const HoursDashes({
    Key key,
    this.color = Colors.black,
  }) : super(key: key);

  final Color color;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: HoursDashesPainter(color: color),
    );
  }
}

class HoursDashesPainter extends CustomPainter {
  HoursDashesPainter({
    this.color,
  }) : _hoursDashesPaint = Paint()
          ..color = color
          ..style = PaintingStyle.stroke
          ..strokeCap = StrokeCap.round
          ..strokeWidth = 2;

  final Color color;

  final Paint _hoursDashesPaint;

  @override
  void paint(Canvas canvas, Size size) {
    final double offset = size.width / 2;
    final double minRadius = offset * .85;
    final double maxRadius = offset * .95;
    final Path path = Path();

    for (int i = 0; i < 13; i++) {
      final double angle = i * (2 * pi / 12) - pi / 2;
      final double x1 = minRadius * cos(angle);
      final double y1 = minRadius * sin(angle);
      final double x2 = maxRadius * cos(angle);
      final double y2 = maxRadius * sin(angle);

      path.moveTo(offset + x1, offset + y1);
      path.lineTo(offset + x2, offset + y2);
    }

    canvas.drawPath(path, _hoursDashesPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
