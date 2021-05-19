import 'package:flutter/material.dart';
import '../common/TypographyStyles.dart';
import '../components/space_y.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SpaceY(
            size: 16,
            children: <Widget>[
              Image.asset('assets/images/Cool Kids On Wheels.png'),
               Text(
                 'CodeFactory',
                 style: TypographyStyles.display2,
               )
            ],
          )
        ],
      ),
    );
  }
}
