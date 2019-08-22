import 'package:challenge_01/src/screens/home_page.dart';
import 'package:flutter_web/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Challenge_01',
      theme: ThemeData(
        primaryColor: Color(0xff000fff),
        fontFamily: 'Oswald',
      ),
      home: HomePage(),
    );
  }
}
