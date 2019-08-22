import 'package:flutter_web/material.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Color defaultWhite = Color(0xfffafafa);

    return Positioned.fill(
      left: 150,
      child: Align(
        alignment: Alignment.centerLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              color: defaultWhite,
              child: Text(
                'HELLO',
                style: TextStyle(
                  color: Color(
                    0xff1d1d1d,
                  ),
                  fontSize: 100,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              color: defaultWhite,
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  'Hi, my name is Oussama, i\'m a professional web designer. \nReady to make your product better - more intresting - the coolest.',
                  style: TextStyle(
                    color: Color(
                      0xff1d1d1d,
                    ),
                    fontSize: 22,
                    fontWeight: FontWeight.w200,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 40,
              ),
              child: RaisedButton(
                hoverElevation: 0,
                highlightElevation: 0,
                elevation: 0,
                color: Theme.of(context).primaryColor,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 20,
                  ),
                  child: Text(
                    'COOPERATION',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
