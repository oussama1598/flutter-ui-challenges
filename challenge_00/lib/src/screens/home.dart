import 'package:challenge_00/src/screens/task_details.dart';
import 'package:challenge_00/src/widgets/days_selector_expansion/days_selector_expansion.dart';
import 'package:challenge_00/src/widgets/tasks_list/taks_list.dart';
import 'package:challenge_00/src/widgets/team_sheet.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 8, top: 10, bottom: 8),
          child: CircleAvatar(
            child: ClipOval(
              child: Image.network('https://ui-avatars.com/api/?size=128'),
            ),
          ),
        ),
        title: Text(
          'Full name',
          style: TextStyle(color: Colors.white.withOpacity(.8)),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(FontAwesomeIcons.bell),
            onPressed: () {
              Navigator.of(context).pushNamed(TaskDetails.routeName);
            },
          )
        ],
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
        ),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            DaysSelectorExpansion(),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: TasksList(),
              ),
            ),
            GestureDetector(
              child: Container(
                width: double.infinity,
                color: Colors.white,
                child: Icon(
                  FontAwesomeIcons.angleUp,
                ),
              ),
              onTap: () => _onOpenTeamSheetPressed(context),
            )
          ],
        ),
      ),
    );
  }

  void _onOpenTeamSheetPressed(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return TeamSheet();
      },
    );
  }
}
