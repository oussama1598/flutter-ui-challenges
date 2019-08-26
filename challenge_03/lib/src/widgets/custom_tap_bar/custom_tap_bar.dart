import 'package:challenge_03/src/model/tapBarItem.dart';
import 'package:flutter/material.dart';

class CustomTapBar extends StatefulWidget {
  final PageController pageController;
  final Color color;
  final Color selectedColor;
  final Color selectedBackgroundColor;

  const CustomTapBar({
    Key key,
    @required this.pageController,
    this.color = Colors.black,
    this.selectedColor = Colors.red,
    this.selectedBackgroundColor = Colors.transparent,
  }) : super(key: key);

  @override
  _CustomTapBarState createState() => _CustomTapBarState();
}

class _CustomTapBarState extends State<CustomTapBar> {
  List<TapBarItem> tapBarItems = [
    TapBarItem(icon: Icons.alarm),
    TapBarItem(icon: Icons.access_time),
    TapBarItem(icon: Icons.timer),
    TapBarItem(icon: Icons.hourglass_empty),
  ];
  int oldPage = 0;

  @override
  void initState() {
    widget.pageController.addListener(_onPageChanged);
    super.initState();
  }

  void _onPageChanged() {
    final double page = widget.pageController.page;

    if (page.toInt() == page && page != oldPage) {
      final TapBarItem nextTapBarItem = tapBarItems.elementAt(page.toInt());
      final TapBarItem previousTapBarItem = tapBarItems.elementAt(oldPage);

      setState(() {
        tapBarItems[page.toInt()] = TapBarItem(
          icon: nextTapBarItem.icon,
          selected: true,
        );
        tapBarItems[oldPage] = TapBarItem(
          icon: previousTapBarItem.icon,
          selected: false,
        );
      });

      oldPage = page.toInt();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: tapBarItems
          .map(
            (TapBarItem tapBarItem) => _buildTapBarItem(
              icon: tapBarItem.icon,
              selected: tapBarItem.selected,
            ),
          )
          .toList(),
    );
  }

  Widget _buildTapBarItem({
    IconData icon,
    bool selected = false,
  }) {
    final Color bgColor =
        selected ? widget.selectedBackgroundColor : Colors.transparent;
    final Color iconColor = selected ? widget.selectedColor : widget.color;

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
