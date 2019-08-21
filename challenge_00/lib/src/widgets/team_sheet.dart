import 'package:challenge_00/src/widgets/team_list.dart';
import 'package:flutter/material.dart';

class TeamSheet extends StatelessWidget {
  const TeamSheet({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Container(
              width: double.infinity,
              child: Text(
                'Team',
                style: TextStyle(
                  color: Colors.white.withOpacity(.8),
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Expanded(
              child: TeamList(),
            ),
          ],
        ),
      ),
    );
  }
}
