import 'package:challenge_03/src/widgets/styled_panel.dart';
import 'package:challenge_03/src/widgets/world_clocks/world_clocks_list.dart';
import 'package:flutter/material.dart';

class WorldClocksPanel extends StatelessWidget {
  const WorldClocksPanel({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StyledPanel(
      child: Stack(
        fit: StackFit.expand,
        overflow: Overflow.visible,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 60),
            child: WorldClocksList(),
          ),
          Positioned.fill(
            top: -20,
            child: Align(
              alignment: Alignment.topCenter,
              child: FloatingActionButton(
                child: Icon(Icons.add),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
