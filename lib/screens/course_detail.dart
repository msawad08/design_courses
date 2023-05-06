import 'package:design_course/controller/course_detail_controller.dart';
import 'package:design_course/models/course.dart';
import 'package:design_course/widgets/course_rating.dart';
import 'package:flutter/material.dart';

class CourseDetail extends StatelessWidget {
  const CourseDetail({Key? key, required this.id})
      : super(key: key);

  final int id;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.tertiary,
      body: CourseDetailController(id: id),
    );
  }
}


