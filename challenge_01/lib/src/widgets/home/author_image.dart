import 'package:flutter_web/material.dart';

class AuthorImage extends StatelessWidget {
  const AuthorImage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      left: -350,
      child: Align(
        alignment: Alignment.centerLeft,
        child: Container(
          decoration: BoxDecoration(
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.black,
                offset: Offset(-20, 10),
                blurRadius: 50,
              ),
            ],
          ),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.zero,
            ),
            margin: EdgeInsets.all(0),
            // elevation: 0,
            child: Image.network(
              'assets/images/Photo.png',
            ),
          ),
        ),
      ),
    );
  }
}
