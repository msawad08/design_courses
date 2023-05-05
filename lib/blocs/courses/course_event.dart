import 'package:design_course/utils/network_status.dart';

import '../../models/course.dart';

abstract class CourseEvent {
  const CourseEvent();
}

class CourseChangeEvent extends CourseEvent {
  final List<Course> courses;
  final NetworkStatus status;
  final String error;
  const CourseChangeEvent(
      {this.courses = const [],
      this.status = NetworkStatus.unknown,
      this.error = ""});
}

class LoadCoursesEvent extends CourseEvent {}

class LoadPopularCoursesEvent extends CourseEvent {}

class SearchCoursesEvent extends CourseEvent {
  final String query;

  const SearchCoursesEvent(this.query);
}
