import 'package:flutter/material.dart';

class DaysSelector extends StatelessWidget {
  final List<String> _daysOfTheWeeks = const [
    'S',
    'M',
    'T',
    'W',
    'T',
    'F',
  ];

  const DaysSelector({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: _daysOfTheWeeks
          .map(
            (
              String day,
            ) =>
                _buildDayCard(day),
          )
          .toList(),
    );
  }

  Widget _buildDayCard(String day) {
    final bool selected = day == 'W';
    final TextStyle textStyle = TextStyle(
      color: selected
          ? Colors.white.withOpacity(.7)
          : Colors.black.withOpacity(.7),
      fontSize: 18,
    );

    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Card(
          color: selected ? const Color(0xfff3b28c) : Colors.white,
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  right: 10,
                  top: 10,
                ),
                child: Text(
                  day,
                  style: textStyle,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  '18',
                  style: textStyle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
