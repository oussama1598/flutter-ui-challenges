import 'package:challenge_03/src/helpers/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TimerListItem extends StatelessWidget {
  final DateTime dateTime;

  TimerListItem({
    Key key,
    @required this.dateTime,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 15,
      ),
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text(
              _buildTimeString(),
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            subtitle: Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: Text(
                _buildDateString(),
                style: TextStyle(
                  color: fadedWhite,
                ),
              ),
            ),
            trailing: IconButton(
              icon: Icon(
                Icons.close,
                color: fadedWhite,
              ),
              onPressed: () {},
            ),
          ),
          Divider(
            color: fadedWhite,
            indent: 15,
            endIndent: 15,
          ),
        ],
      ),
    );
  }

  String _buildTimeString() {
    return DateFormat('hh:kk:ss').format(dateTime);
  }

  String _buildDateString() {
    return DateFormat('E, cc/LL').format(dateTime);
  }
}
