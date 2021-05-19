import 'package:edtech/common/colors.dart';
import 'package:flutter/material.dart';

final textButtonTheme = TextButtonThemeData(
    style: TextButton.styleFrom(
  primary: InkColor.darkGray,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(8.0)),
  ),
));

final elevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
  elevation: 0,
  primary: UtilityColor.primary,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(16.0)),
  ),
));

final textTheme = TextTheme(
    headline5: TextStyle(fontWeight: FontWeight.w500),
    bodyText2: TextStyle(color: InkColor.darkGray));

final appBarTheme = AppBarTheme(
    backgroundColor: Colors.white,
);

final ThemeData themeData = ThemeData(
    fontFamily: 'Rubik',
    scaffoldBackgroundColor: Colors.white,
    accentColor: UtilityColor.primary,
    textButtonTheme: textButtonTheme,
    elevatedButtonTheme: elevatedButtonTheme,
    textTheme: textTheme,
  appBarTheme: appBarTheme,
);
