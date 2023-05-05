import 'package:design_course/models/course.dart';
import 'package:design_course/utils/network_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'course_state.freezed.dart';

@freezed
class CourseState with _$CourseState {
  const factory CourseState({
    @Default(NetworkStatus.unknown) NetworkStatus status,
    @Default("") String errorMessage,
    @Default([]) List<Course> courses,
  }) = _CourseState;

}