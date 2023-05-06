import 'package:design_course/models/course.dart';
import 'package:design_course/widgets/course_card_rating.dart';
import 'package:design_course/widgets/course_card_title.dart';
import 'package:flutter/material.dart';

class VerticalCard extends StatelessWidget {

  const VerticalCard({
    super.key, required this.course, required this.onSelect,
  });

  final Course course;
  final dynamic onSelect;


  @override
  Widget build(BuildContext context) {
    return TextButton(

      onPressed: onSelect,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          color: Theme.of(context).colorScheme.tertiary,
        ),
        padding: const EdgeInsets.all(10.0),
        height: 160,
        width: 120,
        child: Column(
          children: [
            CourseCardTitle(course: course),
            CourseCardRating(course: course),

            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              clipBehavior: Clip.antiAlias,
              child: Image.asset(
                "assets/images/img 1.jpg",
                height: 80,
              ),
            )
          ],
        ),
      ),
    );
  }
}