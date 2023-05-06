
import 'package:design_course/models/course.dart';
import 'package:flutter/material.dart';

abstract class AppEvent {
  const AppEvent();
}

class ChangeAppTheme extends AppEvent {
  final ThemeMode theme;
  const ChangeAppTheme(this.theme);
}

class ChangeAppLanguage extends AppEvent {
  final String value;
  const ChangeAppLanguage(this.value);
}