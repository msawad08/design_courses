import 'package:design_course/blocs/courses/course_state.dart';
import 'package:design_course/utils/network_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'category_state.freezed.dart';

@freezed
class CategoryState with _$CategoryState {
  const factory CategoryState({
    @Default(NetworkStatus.unknown) NetworkStatus status,
    @Default("") String errorMessage,
    @Default([]) List<String> categories,
    @Default("") String selectedCategory,
    @Default(CourseState()) CourseState courseState,
  }) = _CategoryState;

}