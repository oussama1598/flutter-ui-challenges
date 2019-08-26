import 'package:challenge_03/src/widgets/styled_panel.dart';
import 'package:challenge_03/src/widgets/timer/timers_list.dart';
import 'package:flutter/material.dart';

class TimerPanel extends StatelessWidget {
  const TimerPanel({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StyledPanel(
      child: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: TimersList(),
      ),
    );
  }
}
