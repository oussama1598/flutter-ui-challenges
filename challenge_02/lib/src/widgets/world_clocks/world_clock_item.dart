import 'package:challenge_03/src/helpers/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class WorldClockItem extends StatelessWidget {
  final String cityName;
  final DateTime dateTime;

  WorldClockItem({
    Key key,
    int hours,
    this.cityName,
  })  : dateTime = DateTime.now().add(
          Duration(hours: hours),
        ),
        super(key: key);

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
              cityName,
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
            trailing: Text(
              _buildTimeString(),
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
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
    return DateFormat('hh:kk').format(dateTime);
  }

  String _buildDateString() {
    return DateFormat('E, cc/LL').format(dateTime);
  }
}
