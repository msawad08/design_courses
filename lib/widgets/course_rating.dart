import 'package:design_course/models/course.dart';
import 'package:flutter/material.dart';

class CourseRating extends StatelessWidget {
  const CourseRating({
    super.key,
    required this.course, this.size = 1,
  });

  final Course course;
  final int size;

  @override
  Widget build(BuildContext context) {
    final defaultSize = Theme.of(context).textTheme.bodySmall?.fontSize ?? 10;
    return Row(
      children: [
        Text(course.rating.toString(), style: Theme.of(context).textTheme.bodySmall?.copyWith(fontWeight: FontWeight.bold, fontSize: defaultSize * size)),
        Icon(Icons.star, color: Theme.of(context).colorScheme.secondary, size: defaultSize * size,)
      ],
    );
  }
}