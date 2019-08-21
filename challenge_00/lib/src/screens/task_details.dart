import 'package:challenge_00/src/widgets/attachements/attachements_list.dart';
import 'package:challenge_00/src/widgets/team_list.dart';
import 'package:challenge_00/src/widgets/text_title.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TaskDetails extends StatelessWidget {
  static String routeName = 'taskdetails';

  const TaskDetails({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
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
      body: Padding(
        padding: const EdgeInsets.only(
          top: 15,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 30,
                    horizontal: 15,
                  ),
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: double.infinity,
                        child: TextTitle(text: 'Make wireframe design'),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        width: double.infinity,
                        child: Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed posuere fermentum orci, sed pharetra nisi suscipit nec. Aliquam magna dui, blandit ornare pellentesque a, venenatis non orci.',
                          style: TextStyle(
                            color:
                                Theme.of(context).primaryColor.withOpacity(.8),
                            height: 1.5,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: double.infinity,
                        child: TextTitle(text: 'Attachement'),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Expanded(
                        child: AttachementsList(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 170,
              color: Colors.white,
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
            ),
          ],
        ),
      ),
    );
  }
}
