import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';


class MyTheme{
  static ThemeData lightTheme(BuildContext context) => ThemeData(
    primarySwatch: Colors.deepPurple,
    canvasColor: Colors.white,
    cardColor: creamColor,
    fontFamily: 'poppins',
    appBarTheme: AppBarTheme(
      color: Colors.white,
      elevation: 0.0,
      iconTheme: IconThemeData(color: Colors.black),
    ),
  );
    static ThemeData darkTheme(BuildContext context) => ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
        canvasColor: Colors.black,
        cardColor: Colors.black,
        fontFamily: 'poppins',
        appBarTheme: AppBarTheme(
          color: Colors.black,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
    )
    );
  static Color creamColor = const Color(0xfff5f5f5);
  static Color Grey = Vx.gray800;
  static Color Blueish = const Color(0xfff403b58);
}