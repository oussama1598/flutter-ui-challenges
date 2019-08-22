import 'package:challenge_01/src/widgets/dots_grid.dart';
import 'package:challenge_01/src/widgets/home/author_image.dart';
import 'package:challenge_01/src/widgets/home/home_content.dart';
import 'package:challenge_01/src/widgets/home/social_icons.dart';
import 'package:challenge_01/src/widgets/logo.dart';
import 'package:flutter_web/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Expanded(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        height: double.infinity,
                        color: Theme.of(context).primaryColor,
                        child: Stack(
                          children: <Widget>[
                            Logo(),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        height: double.infinity,
                        child: Stack(
                          overflow: Overflow.visible,
                          children: <Widget>[
                            DotsGrid(
                              color: Theme.of(context).primaryColor,
                            ),
                            HomeContent(),
                            AuthorImage(),
                            SocialIcons(),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
