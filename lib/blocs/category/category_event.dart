import 'package:design_course/models/course.dart';
import 'package:design_course/utils/network_status.dart';


abstract class CategoryEvent {
  const CategoryEvent();
}

class CategoryChangeEvent extends CategoryEvent {
  final List<String> categories;
  final NetworkStatus status;
  final String error;
  const CategoryChangeEvent(
      {this.categories = const [],
      this.status = NetworkStatus.unknown,
      this.error = ""});
}

class CourseChangeEvent extends CategoryEvent {
  final List<Course> courses;
  final NetworkStatus status;
  final String error;
  const CourseChangeEvent(
      {this.courses = const [],
        this.status = NetworkStatus.unknown,
        this.error = ""});
}

class LoadCategoryEvent extends CategoryEvent {}

class ChangeSelectedCategory extends CategoryEvent {
  final String category;

  const ChangeSelectedCategory(this.category);
}
