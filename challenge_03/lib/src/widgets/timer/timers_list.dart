import 'package:challenge_03/src/widgets/timer/timer_list_item.dart';
import 'package:flutter/material.dart';

class TimersList extends StatelessWidget {
  const TimersList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        TimerListItem(
          dateTime: DateTime.now(),
        ),
        TimerListItem(
          dateTime: DateTime.now(),
        )
      ],
    );
  }
}
