import 'package:challenge_03/src/screens/alarms_page.dart';
import 'package:challenge_03/src/screens/world_clocks_page.dart';
import 'package:challenge_03/src/widgets/custom_tap_bar/custom_tap_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(15),
              child: CustomTapBar(
                color: Theme.of(context).primaryColor.withOpacity(.4),
                selectedBackgroundColor:
                    Theme.of(context).primaryColor.withOpacity(.05),
                selectedColor: Theme.of(context).accentColor,
              ),
            ),
            Expanded(
              child: PageView(
                children: <Widget>[
                  WorldClocksPage(),
                  AlarmsPage(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
