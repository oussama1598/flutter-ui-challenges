import 'package:challenge_03/src/widgets/alarm_list_item.dart';
import 'package:flutter/material.dart';

class AlarmsPage extends StatelessWidget {
  const AlarmsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ListView(
          children: <Widget>[
            AlarmListItem(
              time: DateTime.now(),
              repeatDays: ['Mon', 'Thu'],
            ),
            AlarmListItem(
              time: DateTime.now(),
              repeatDays: ['Mon', 'Thu', 'Wen'],
              enabled: true,
            ),
          ],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: () {},
            ),
          ),
        ),
      ],
    );
  }
}
