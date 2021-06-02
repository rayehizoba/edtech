import 'package:edtech/common/colors.dart';
import 'package:flutter/material.dart';

final textButtonTheme = TextButtonThemeData(
    style: TextButton.styleFrom(
  primary: InkSwatches.darkGray,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(8.0)),
  ),
));

final elevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
  elevation: 0,
  primary: UtilitySwatches.primary,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(16.0)),
  ),
));

final outlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
        primary: UtilitySwatches.primary,
        side: BorderSide(color: InkSwatches.gray)));

final textTheme = TextTheme(
    headline5: TextStyle(fontWeight: FontWeight.w500),
    bodyText1: TextStyle(
      fontWeight: FontWeight.normal,
      fontSize: 16.0,
      color: InkSwatches.darkGray,
    ),
    bodyText2: TextStyle(
      color: InkSwatches.darkGray,
    ));

final appBarTheme = AppBarTheme(
  backgroundColor: Colors.white,
  elevation: 0.0,
  centerTitle: true,
);

final ThemeData themeData = ThemeData(
  fontFamily: 'Rubik',
  textTheme: textTheme,
  appBarTheme: appBarTheme,
  scaffoldBackgroundColor: Colors.white,
  accentColor: UtilitySwatches.primary,
  textButtonTheme: textButtonTheme,
  elevatedButtonTheme: elevatedButtonTheme,
  outlinedButtonTheme: outlinedButtonTheme,
);
