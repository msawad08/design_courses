import 'package:design_course/controller/course_card_controller.dart';
import 'package:design_course/models/course.dart';
import 'package:design_course/widgets/VerticalCard.dart';
import 'package:design_course/widgets/course_card_rating.dart';
import 'package:design_course/widgets/course_card_title.dart';
import 'package:flutter/material.dart';

import 'course_list.dart';

class PopularView extends StatelessWidget {
  final List<Course> courses;

  const PopularView({super.key, this.courses = const []});

  @override
  Widget build(BuildContext context) {
    return Padding(

      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text("Popular Course", style: Theme.of(context).textTheme.titleLarge,),
          ),
          CourseList(courses: courses)
        ],
      ),
    );
  }
}




