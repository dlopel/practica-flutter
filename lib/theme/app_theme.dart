import 'package:flutter/material.dart';

class AppTheme {
  static var lightTheme = ThemeData.light().copyWith(
      primaryColor: Colors.deepOrange[500],
      appBarTheme: AppBarTheme(color: Colors.deepPurple[500], elevation: 0),
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(foregroundColor: Colors.indigo)));

  static var darkTheme = ThemeData.dark().copyWith(
      primaryColor: Colors.deepOrange[500],
      appBarTheme: AppBarTheme(color: Colors.deepPurple[500], elevation: 0),
      scaffoldBackgroundColor: Colors.black);
}
