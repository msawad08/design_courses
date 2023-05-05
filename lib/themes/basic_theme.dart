

import 'package:flutter/material.dart';

ThemeData  basicTheme = ThemeData(
    useMaterial3: true,
    primaryColor: Colors.white,
    fontFamily: "Mukta",
    textTheme: const TextTheme(
     titleLarge: TextStyle(fontWeight: FontWeight.bold),
    titleMedium: TextStyle(fontWeight: FontWeight.w600),
      bodyLarge: TextStyle(fontWeight: FontWeight.w800, fontSize: 12),
      bodyMedium: TextStyle(fontWeight: FontWeight.normal, fontSize: 12),
      bodySmall: TextStyle(fontWeight: FontWeight.normal, fontSize: 10),
)
);