import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Task extends StatelessWidget {
  const Task({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      child: Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(.08),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          children: <Widget>[
            Icon(
              FontAwesomeIcons.solidCircle,
              color: Color(0xfff3b28c),
              size: 10,
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              'Make wireframe desing',
              style: TextStyle(
                color: Theme.of(context).primaryColor.withOpacity(.8),
                fontSize: 16,
              ),
            )
          ],
        ),
      ),
    );
  }
}
