import 'dart:async';

import 'package:challenge_03/src/helpers/styles/colors.dart';
import 'package:challenge_03/src/widgets/clock/hours_dashes.dart';
import 'package:challenge_03/src/widgets/clock/hours_hand.dart';
import 'package:challenge_03/src/widgets/clock/inner_circle.dart';
import 'package:challenge_03/src/widgets/clock/middle_dot.dart';
import 'package:challenge_03/src/widgets/clock/minutes_hand.dart';
import 'package:challenge_03/src/widgets/clock/outer_circle.dart';
import 'package:challenge_03/src/widgets/clock/seconds_hand.dart';
import 'package:flutter/material.dart';

class Clock extends StatefulWidget {
  const Clock({Key key}) : super(key: key);

  @override
  _ClockState createState() => _ClockState();
}

class _ClockState extends State<Clock> {
  DateTime _dateTime;
  Timer _timer;

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  void initState() {
    _timer = Timer.periodic(
        Duration(
          seconds: 1,
        ),
        _updateTime);

    super.initState();
  }

  void _updateTime(Timer timer) {
    setState(() {
      _dateTime = DateTime.now();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        OuterCircle(
          child: HoursDashes(
            color: fadedPrimaryColor,
          ),
        ),
        InnerCircle(),
        SecondsHand(
          seconds: _dateTime.second,
          radiusPercentage: .55,
          color: accentColor,
        ),
        MinutesHand(
          minutes: _dateTime.minute,
          radiusPercentage: .6,
          color: fadedPrimaryColor,
        ),
        HoursHand(
          hours: _dateTime.hour,
          radiusPercentage: .4,
          color: primaryColor,
        ),
        MiddleDot(),
      ],
    );
  }
}
