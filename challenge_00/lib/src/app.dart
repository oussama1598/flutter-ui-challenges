import 'package:challenge_00/src/screens/home.dart';
import 'package:challenge_00/src/screens/task_details.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xff39305b),
        canvasColor: Colors.transparent,
      ),
      title: 'Challenge-00',
      home: HomePage(),
      routes: {
        TaskDetails.routeName: (BuildContext context) => TaskDetails(),
      },
    );
  }
}
