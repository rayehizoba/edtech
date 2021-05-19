import 'package:flutter/material.dart';

final ThemeData appTheme = ThemeData(
    fontFamily: 'Rubik',
    backgroundColor: Colors.white,
    accentColor: Color(0xffe3562a),
    textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
      primary: Color(0xff78746d),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
    )),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
      elevation: 0,
      primary: Color(0xffe3562a),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(16.0)),
      ),
    )),
    textTheme: TextTheme(
        headline5: TextStyle(fontWeight: FontWeight.w500),
        bodyText2: TextStyle(color: Color(0xff78746d))));
