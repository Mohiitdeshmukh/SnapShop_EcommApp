import 'package:flutter/material.dart';

ThemeData themeData = ThemeData(
  scaffoldBackgroundColor: Colors.white,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.deepOrangeAccent,
      textStyle: TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.w500,
      ),
      disabledBackgroundColor: Colors.grey,
    ),
  ),
);