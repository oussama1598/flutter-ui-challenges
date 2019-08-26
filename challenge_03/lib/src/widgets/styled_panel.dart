import 'package:challenge_03/src/helpers/styles/colors.dart';
import 'package:flutter/material.dart';

class StyledPanel extends StatelessWidget {
  final Widget child;

  const StyledPanel({
    Key key,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
        boxShadow: [
          BoxShadow(
            blurRadius: 13,
            spreadRadius: 1,
            color: fadedPrimaryColor,
          ),
        ],
      ),
      child: child,
    );
  }
}
