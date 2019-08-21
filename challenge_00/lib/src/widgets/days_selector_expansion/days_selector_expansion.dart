import 'package:challenge_00/src/widgets/days_selector_expansion/days_selector.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DaysSelectorExpansion extends StatelessWidget {
  const DaysSelectorExpansion({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                'Monday, 19 Aug 2019',
                style: TextStyle(
                  color: Colors.white.withOpacity(.8),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Icon(
                FontAwesomeIcons.angleDown,
                color: Colors.white.withOpacity(.8),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: DaysSelector(),
          ),
        ],
      ),
    );
  }
}
