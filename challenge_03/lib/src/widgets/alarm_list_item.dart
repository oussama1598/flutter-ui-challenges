import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AlarmListItem extends StatelessWidget {
  final bool enabled;
  final DateTime time;
  final List<String> repeatDays;

  const AlarmListItem({
    Key key,
    @required this.time,
    @required this.repeatDays,
    this.enabled = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Color timeColor = enabled
        ? Theme.of(context).primaryColor
        : Theme.of(context).primaryColor.withOpacity(.5);
    final Color meridiemIndicatorColor = enabled
        ? Theme.of(context).primaryColor.withOpacity(.7)
        : Theme.of(context).primaryColor.withOpacity(.3);
    final Color switchColor = enabled
        ? Theme.of(context).accentColor
        : Theme.of(context).primaryColor;

    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 15,
      ),
      child: Column(
        children: <Widget>[
          ListTile(
            title: Row(
              children: <Widget>[
                Text(
                  _buildTimeString(),
                  style: TextStyle(
                    color: timeColor,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 3,
                ),
                Text(
                  _buildMeridiemIndicatorString(),
                  style: TextStyle(
                    color: meridiemIndicatorColor,
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            subtitle: Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: Text(
                _buildRepeatDays(),
                style: TextStyle(
                  color: timeColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            trailing: Switch(
              inactiveThumbColor: switchColor,
              value: enabled,
              onChanged: (bool checked) {},
            ),
          ),
          Divider(
            indent: 15,
            endIndent: 15,
            color: Theme.of(context).primaryColor.withOpacity(.5),
          ),
        ],
      ),
    );
  }

  String _buildRepeatDays() {
    return repeatDays.join(', ');
  }

  String _buildTimeString() {
    return DateFormat('hh:kk').format(time);
  }

  String _buildMeridiemIndicatorString() {
    return DateFormat('a').format(time).toLowerCase();
  }
}
