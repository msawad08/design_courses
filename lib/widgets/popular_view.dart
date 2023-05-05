import 'package:design_course/controller/course_card_controller.dart';
import 'package:design_course/models/course.dart';
import 'package:design_course/widgets/VerticalCard.dart';
import 'package:design_course/widgets/course_card_rating.dart';
import 'package:design_course/widgets/course_card_title.dart';
import 'package:flutter/material.dart';

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
          Text("Popular Course", style: Theme.of(context).textTheme.titleLarge,),
          Wrap(
            // runSpacing: 20.0,
            alignment: WrapAlignment.spaceEvenly,
            runSpacing: 20.0,
            spacing: 20.0,
            children: [
              ...courses.map((course) =>
              CourseCardController(course: course, cardType: CourseCardType.vertical,),
              )
            ],
          )
          // ListView.separated(
          //   itemCount: courses.length,
          //   scrollDirection: Axis.vertical,
          //
          //   padding: const EdgeInsets.all(10.0),
          //   itemBuilder: (context, index) {
          //     return
          //   }, separatorBuilder: (BuildContext context, int index) => const SizedBox(width: 10,),
          // )
        ],
      ),
    );
  }
}


