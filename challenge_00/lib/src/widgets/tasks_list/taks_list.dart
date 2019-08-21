import 'package:challenge_00/src/widgets/tasks_list/task.dart';
import 'package:challenge_00/src/widgets/text_title.dart';
import 'package:flutter/material.dart';

class TasksList extends StatelessWidget {
  const TasksList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 15,
        horizontal: 20,
      ),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              TextTitle(text: 'Tasks'),
              FloatingActionButton(
                elevation: 0,
                highlightElevation: 0,
                backgroundColor: Colors.grey.withOpacity(.08),
                mini: true,
                child: Icon(
                  Icons.add,
                  color: Theme.of(context).primaryColor,
                ),
                onPressed: () {},
              ),
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: ListView(
                children: List.generate(
                  10,
                  (int index) => Task(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
