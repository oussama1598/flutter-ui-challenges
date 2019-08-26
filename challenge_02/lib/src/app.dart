import 'package:challenge_03/src/helpers/styles/colors.dart' as colors;
import 'package:challenge_03/src/screens/home_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Challenge 03',
      theme: ThemeData(
        primaryColor: colors.primaryColor,
        accentColor: colors.accentColor,
        scaffoldBackgroundColor: colors.backgroundColor,
      ),
      home: HomePage(),
    );
  }
}
