import 'package:design_course/models/course.dart';
import 'package:design_course/widgets/course_rating.dart';
import 'package:flutter/material.dart';

class CourseCardRating extends StatelessWidget {
  final Course course;
  const CourseCardRating({
    super.key, required this.course,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("${course.noOfClasses} Lessons", style: Theme.of(context).textTheme.bodySmall,),
          CourseRating(course: course),
        ],
      ),
    );
  }
}

