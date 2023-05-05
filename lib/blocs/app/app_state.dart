import 'package:design_course/models/course.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_state.freezed.dart';

enum ThemeType {
  light, dark
}

@freezed
class AppState with _$AppState {
  const factory AppState({
    Course? selectedCourse,
    @Default(ThemeType.light) ThemeType themeType
  }) = _AppState;

}