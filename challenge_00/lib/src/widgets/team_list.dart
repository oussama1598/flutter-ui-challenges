import 'package:flutter/material.dart';

class TeamList extends StatelessWidget {
  const TeamList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: List.generate(
        5,
        (int index) => _buildUserAvatar(),
      )..add(_buildAddUser(context)),
    );
  }

  Padding _buildUserAvatar() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      child: Column(
        children: <Widget>[
          CircleAvatar(
            child: ClipOval(
              child: Image.network('https://ui-avatars.com/api/?size=128'),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Name',
            style: TextStyle(
              color: Colors.white.withOpacity(.8),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAddUser(context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 10,
      ),
      child: Column(
        children: <Widget>[
          FloatingActionButton(
            elevation: 0,
            highlightElevation: 0,
            backgroundColor: Colors.grey.withOpacity(.08),
            mini: true,
            child: Icon(
              Icons.add,
              color: Colors.white.withOpacity(.8),
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
