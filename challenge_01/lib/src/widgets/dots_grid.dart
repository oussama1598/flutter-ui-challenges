import 'package:flutter_web/material.dart';

class DotsGrid extends StatelessWidget {
  final Color color;

  const DotsGrid({
    this.color = Colors.red,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 20,
      // Generate 100 widgets that display their index in the List.
      children: List.generate(300, (index) {
        return Center(
          child: Container(
            height: 3,
            width: 3,
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,
            ),
          ),
        );
      }),
    );
  }
}
