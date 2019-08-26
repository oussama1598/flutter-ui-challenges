import 'package:flutter/material.dart';

class MiddleDot extends StatelessWidget {
  const MiddleDot({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: MiddleDotPainter(),
    );
  }
}

class MiddleDotPainter extends CustomPainter {
  MiddleDotPainter()
      : _middleDotStrokePaint = Paint()
          ..color = Colors.red
          ..style = PaintingStyle.stroke
          ..strokeWidth = 2,
        _middleDotCirclePaint = Paint()..color = Colors.white;

  final Paint _middleDotCirclePaint;
  final Paint _middleDotStrokePaint;

  @override
  void paint(Canvas canvas, Size size) {
    final double offset = size.width / 2;

    canvas.drawCircle(Offset(offset, offset), 3, _middleDotCirclePaint);
    canvas.drawCircle(Offset(offset, offset), 3, _middleDotStrokePaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
