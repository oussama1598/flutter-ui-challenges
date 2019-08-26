import 'package:challenge_03/src/screens/alarms_page.dart';
import 'package:challenge_03/src/screens/timer_page.dart';
import 'package:challenge_03/src/screens/world_clocks_page.dart';
import 'package:challenge_03/src/widgets/custom_tap_bar/custom_tap_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _pageController;

  @override
  void initState() {
    _pageController = PageController();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(15),
              child: CustomTapBar(
                pageController: _pageController,
                color: Theme.of(context).primaryColor.withOpacity(.4),
                selectedBackgroundColor:
                    Theme.of(context).primaryColor.withOpacity(.05),
                selectedColor: Theme.of(context).accentColor,
              ),
            ),
            Expanded(
              child: PageView(
                controller: _pageController,
                children: <Widget>[
                  AlarmsPage(),
                  WorldClocksPage(),
                  TimerPage(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();

    super.dispose();
  }
}
