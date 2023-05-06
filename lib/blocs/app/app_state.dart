import 'package:design_course/models/course.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_state.freezed.dart';


@freezed
class AppState with _$AppState {
  const factory AppState({
    @Default(ThemeMode.light) ThemeMode themeType,
    @Default("en") String locale,
  }) = _AppState;

}