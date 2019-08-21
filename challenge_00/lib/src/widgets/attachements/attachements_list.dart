import 'package:flutter/material.dart';

class AttachementsList extends StatelessWidget {
  const AttachementsList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: List.generate(
        3,
        (int index) => _buildAttachement(),
      ),
    );
  }

  Widget _buildAttachement() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 120,
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
