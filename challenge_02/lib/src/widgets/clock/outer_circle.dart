import 'package:flutter/material.dart';

class OuterCircle extends StatelessWidget {
  const OuterCircle({
    Key key,
    this.child = const SizedBox(),
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Padding(
        padding: EdgeInsets.all(40),
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xffe1eaf3),
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                blurRadius: 20,
                spreadRadius: 20,
                color: Color(0xffd5e4eb),
              )
            ],
          ),
          child: child,
        ),
      ),
    );
  }
}
