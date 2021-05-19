import 'package:edtech/pages/intro_page.dart';
import 'package:flutter/material.dart';

import 'common/app_theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  _hideSoftKeyboard(BuildContext context) {
    // hides the soft keyboard by clicking outside of TextField
    // or anywhere on the screen
    FocusScope.of(context).requestFocus(new FocusNode());
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Edtech',
      theme: appTheme,
      home: Scaffold(
        body: SafeArea(
          child: IntroPage(),
        ),
      ),
//      home: new GestureDetector(
//        onTap: () {
//          _hideSoftKeyboard(context);
//        },
//        child: Scaffold(
//          body: LayoutBuilder(builder:
//              (BuildContext context, BoxConstraints viewportConstraints) {
//            return SingleChildScrollView(
//              child: ConstrainedBox(
//                constraints: BoxConstraints(
//                  minHeight: viewportConstraints.maxHeight,
//                ),
//                child: IntroPage(),
//              ),
//            );
//          }),
//        ),
//      ),
    );
  }
}
