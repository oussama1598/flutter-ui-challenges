import 'package:challenge_03/src/screens/home_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Challenge 03',
      theme: ThemeData(
        primaryColor: Color(0xff375D8E),
        accentColor: Color(0xffFC3087),
        scaffoldBackgroundColor: Color(0xffE3ECF1),
      ),
      home: HomePage(),
    );
  }
}
