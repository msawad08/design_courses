import 'package:flutter/material.dart';

import '../controller/course_card_controller.dart';
import '../models/course.dart';


class CourseList extends StatelessWidget {

  const CourseList({
    super.key,
    required this.courses,
  });

  final List<Course> courses;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      // runSpacing: 20.0,
      alignment: WrapAlignment.start,
      runAlignment: WrapAlignment.start,
      crossAxisAlignment: WrapCrossAlignment.start,
      runSpacing: 20.0,
      spacing: 20.0,
      children: [
        ...courses.map((course) =>
            CourseCardController(course: course, cardType: CourseCardType.vertical,),
        )
      ],
    );
  }
}