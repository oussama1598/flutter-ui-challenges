import 'package:flutter/material.dart';

class TextTitle extends StatelessWidget {
  final String text;

  const TextTitle({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Theme.of(context).primaryColor.withOpacity(.8),
        fontWeight: FontWeight.bold,
        fontSize: 18,
      ),
    );
  }
}
