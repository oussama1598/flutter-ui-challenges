import 'package:challenge_03/src/widgets/world_clocks/world_clocks_list.dart';
import 'package:flutter/material.dart';

class WorldClocksPanel extends StatelessWidget {
  const WorldClocksPanel({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 0),
            blurRadius: 10,
            spreadRadius: 4,
            color: Colors.black.withOpacity(.3),
          ),
        ],
      ),
      child: Stack(
        fit: StackFit.expand,
        overflow: Overflow.visible,
        children: <Widget>[
          Container(
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
