import 'package:challenge_03/src/helpers/styles/colors.dart';
import 'package:challenge_03/src/widgets/timer/timer_panel.dart';
import 'package:challenge_03/src/widgets/timer_clock/timer_clock.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class TimerPage extends StatelessWidget {
  const TimerPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SlidingUpPanel(
      color: Colors.transparent,
      boxShadow: [],
      panel: TimerPanel(),
      body: Container(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              child: AspectRatio(
                aspectRatio: 1,
                child: TimerClock(),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(
                        Icons.refresh,
                        color: fadedPrimaryColor,
                      ),
                      onPressed: () {},
                    ),
                    FloatingActionButton(
                      child: Icon(
                        Icons.play_arrow,
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.file_download,
                        color: fadedPrimaryColor,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
