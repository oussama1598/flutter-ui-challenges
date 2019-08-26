import 'package:flutter/material.dart';

class CustomTapBar extends StatelessWidget {
  final Color color;
  final Color selectedColor;
  final Color selectedBackgroundColor;

  const CustomTapBar(
      {Key key,
      this.color = Colors.black,
      this.selectedColor = Colors.red,
      this.selectedBackgroundColor = Colors.transparent})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _buildTapBarItem(
          icon: Icons.alarm,
          selected: true,
        ),
        _buildTapBarItem(icon: Icons.access_time),
        _buildTapBarItem(icon: Icons.timer),
        _buildTapBarItem(icon: Icons.hourglass_empty),
      ],
    );
  }

  Widget _buildTapBarItem({
    IconData icon,
    bool selected = false,
  }) {
    final Color bgColor =
        selected ? selectedBackgroundColor : Colors.transparent;
    final Color iconColor = selected ? selectedColor : color;

    return FloatingActionButton(
      elevation: 0,
      highlightElevation: 0,
      backgroundColor: bgColor,
      child: Icon(
        icon,
        size: 30,
        color: iconColor,
      ),
      onPressed: () {},
    );
  }
}
