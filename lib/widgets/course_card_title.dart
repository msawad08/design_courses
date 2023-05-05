import 'package:design_course/models/course.dart';
import 'package:flutter/material.dart';

class CourseCardTitle extends StatelessWidget {
  final Course course;
  const CourseCardTitle({
    super.key, required this.course,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(child: Text(course.name, style: Theme.of(context).textTheme.bodyLarge,) ,);
  }
}
