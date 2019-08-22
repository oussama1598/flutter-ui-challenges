import 'package:challenge_01/src/helpers/font_awesome_icons.dart';
import 'package:challenge_01/src/widgets/box_icon.dart';
import 'package:flutter_web/material.dart';

class SocialIcons extends StatelessWidget {
  const SocialIcons({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 50,
      top: 30,
      child: Row(
        children: <Widget>[
          BoxIcon(
            size: Size(35, 35),
            borderColor: Theme.of(context).primaryColor,
            backgroundColor: Theme.of(context).primaryColor,
            icon: FontAwesomeIcons.twitter,
          ),
          SizedBox(
            width: 30,
          ),
          BoxIcon(
            size: Size(35, 35),
            borderColor: Theme.of(context).primaryColor,
            backgroundColor: Theme.of(context).primaryColor,
            icon: FontAwesomeIcons.behance,
          ),
          SizedBox(
            width: 30,
          ),
          BoxIcon(
            size: Size(35, 35),
            borderColor: Theme.of(context).primaryColor,
            backgroundColor: Theme.of(context).primaryColor,
            icon: FontAwesomeIcons.dribbble,
          ),
        ],
      ),
    );
  }
}
