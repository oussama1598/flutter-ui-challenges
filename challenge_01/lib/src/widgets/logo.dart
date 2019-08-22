import 'dart:math' as math;

import 'package:flutter_web/material.dart';

class Logo extends StatelessWidget {
  const Logo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: math.pi / 4,
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 80,
          vertical: 30,
        ),
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.white,
            width: 2,
          ),
        ),
        child: Center(
          child: Transform.rotate(
            angle: -math.pi / 4,
            child: Text(
              'LOGO',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
