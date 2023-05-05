import 'package:design_course/models/course.dart';
import 'package:flutter/material.dart';

class PopularView extends StatelessWidget {
  final List<Course> courses;

  const PopularView({super.key, this.courses = const []});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Popular Course"),
        Wrap(
          children: [
            ...List.generate(10, (index) => index).map((e) =>
            Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                color: Theme.of(context).colorScheme.tertiary,
              ),
              height: 200,
              width: 160,
              child: Column(
                children: [
                  const Expanded(child: Text("Course Name")),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("Lessons"),
                      Text("Rating"),
                    ],
                  ),
                  Image.asset(
                    "assets/images/img 1.jpg",
                    height: 120,
                  )
                ],
              ),
            ),
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
    );
  }
}
