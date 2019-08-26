import 'package:challenge_03/src/helpers/styles/colors.dart';
import 'package:challenge_03/src/widgets/clock/inner_circle.dart';
import 'package:challenge_03/src/widgets/clock/outer_circle.dart';
import 'package:challenge_03/src/widgets/timer_clock/timer_progress_bar.dart';
import 'package:challenge_03/src/widgets/timer_clock/timer_progress_dot.dart';
import 'package:flutter/material.dart';

class TimerClock extends StatelessWidget {
  const TimerClock({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double progress = .8;

    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        OuterCircle(),
        InnerCircle(
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              TimerProgressBar(
                progress: progress,
              ),
              TimerProgressDot(
                progress: progress,
              ),
              Center(
                child: Text(
                  '16:20:30',
                  style: TextStyle(
                    color: primaryColor,
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
