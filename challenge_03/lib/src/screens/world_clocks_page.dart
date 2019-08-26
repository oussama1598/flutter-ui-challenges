import 'package:challenge_03/src/widgets/world_clocks/world_clocks_panel.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class WorldClocksPage extends StatelessWidget {
  const WorldClocksPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SlidingUpPanel(
      color: Colors.transparent,
      boxShadow: [],
      panel: WorldClocksPanel(),
      body: Container(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              child: AspectRatio(
                aspectRatio: 1,
                child: Container(
                  color: Colors.red,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Current Time Zone',
                      style: TextStyle(
                        color: Theme.of(context).primaryColor.withOpacity(.7),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '04:02pm Saturdat, 22 June',
                      style: TextStyle(
                        color: Color(0xff040E1F),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
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
