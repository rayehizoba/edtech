import 'package:flutter/material.dart';

import '../common/TypographyStyles.dart';
import '../components/space_y.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = '/splash';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SpaceY(
          size: 16,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/images/Cool Kids On Wheels.png'),
            Text(
              'CodeFactory',
              style: TypographyStyles.display2,
            )
          ],
        ),
      ),
    );
  }
}
