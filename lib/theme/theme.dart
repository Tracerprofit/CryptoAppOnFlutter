import 'package:flutter/material.dart';

final classicTheme = ThemeData(
    scaffoldBackgroundColor: Color.fromARGB(255, 255, 255, 255),
    primarySwatch: Colors.deepOrange,
    dividerColor: Colors.black26,
    appBarTheme: const AppBarTheme(
      elevation: 0,
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 25,
        fontWeight: FontWeight.w600,
      ),
    ),
    textTheme: const TextTheme(
      bodyMedium: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 20,
      ),
      labelSmall: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w400,
        color: Colors.black54,
      ),
    )
);