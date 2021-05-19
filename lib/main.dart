import 'package:edtech/pages/intro_page.dart';
import 'package:flutter/material.dart';

import 'common/theme_data.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
//  _hideSoftKeyboard(BuildContext context) {
//    // hides the soft keyboard by clicking outside of TextField
//    // or anywhere on the screen
//    FocusScope.of(context).requestFocus(new FocusNode());
//  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Edtech',
      theme: themeData,
      home: ThemeViewer(),
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

class ThemeViewer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final route = IntroPage.routeName;

    switch (route) {
      case IntroPage.routeName:
        return IntroPage();

      default:
        return Container();
    }
  }
}
