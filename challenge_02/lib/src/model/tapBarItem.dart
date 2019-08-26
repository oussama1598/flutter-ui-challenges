import 'package:flutter/material.dart';

class TapBarItem {
  final IconData icon;
  final bool selected;

  TapBarItem({
    @required this.icon,
    this.selected = false,
  });
}
