import 'package:challenge_03/src/widgets/world_clocks/world_clock_item.dart';
import 'package:flutter/material.dart';

class WorldClocksList extends StatelessWidget {
  const WorldClocksList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        WorldClockItem(
          cityName: 'New York',
          hours: 7,
        ),
        WorldClockItem(
          cityName: 'Casablanca',
          hours: 0,
        ),
      ],
    );
  }
}
