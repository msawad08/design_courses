
import 'package:design_course/models/course.dart';

abstract class AppEvent {
  const AppEvent();
}

class SelectCourseEvent extends AppEvent {
  final Course course;
  const SelectCourseEvent(this.course);
}