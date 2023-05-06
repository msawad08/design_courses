import 'package:design_course/models/course.dart';

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


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
            child: Text(AppLocalizations.of(context)!.popular_course, style: Theme.of(context).textTheme.titleLarge,),
          ),
          CourseList(courses: courses)
        ],
      ),
    );
  }
}




