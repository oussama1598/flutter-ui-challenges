import 'package:challenge_03/src/helpers/styles/colors.dart';
import 'package:flutter/material.dart';

class InnerCircle extends StatelessWidget {
  const InnerCircle({
    Key key,
    this.child = const SizedBox(),
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Padding(
        padding: EdgeInsets.all(80),
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xffedf0f7),
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                blurRadius: 13,
                spreadRadius: 1,
                color: shadowColor,
              ),
            ],
          ),
          child: child,
        ),
      ),
    );
  }
}
