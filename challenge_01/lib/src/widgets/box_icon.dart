import 'dart:math' as math;

import 'package:flutter_web/material.dart';

class BoxIcon extends StatelessWidget {
  final IconData icon;
  final Size size;
  final Color borderColor;
  final Color backgroundColor;
  final Color iconColor;
  final double iconSize;

  const BoxIcon({
    Key key,
    @required this.icon,
    this.size = const Size(50, 50),
    this.borderColor = Colors.white,
    this.backgroundColor = Colors.transparent,
    this.iconColor = Colors.white,
    this.iconSize = 18,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: math.pi / 4,
      child: Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
          color: backgroundColor,
          border: Border.all(
            color: borderColor,
            width: 2,
          ),
        ),
        child: Transform.rotate(
          angle: -math.pi / 4,
          child: Icon(
            icon,
            color: iconColor,
            size: iconSize,
          ),
        ),
      ),
    );
  }
}
