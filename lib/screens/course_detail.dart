import 'package:design_course/models/course.dart';
import 'package:design_course/widgets/course_rating.dart';
import 'package:flutter/material.dart';

class CourseDetail extends StatelessWidget {
  CourseDetail({Key? key}) : super(key: key);

  final Course course = Course.fromJson({
    "name": "Web Design Basics",
    "description":
        "Learn the basics of designing for the web, including layout, typography, and responsive design.",
    "rating": 4.1,
    "time": "2 hours",
    "seatsAvailable": 35,
    "price": "\$49.99",
    "noOfClasses": 4,
    "category": "Basic UI"
  });

  @override
  Widget build(BuildContext context) {
    final tertiaryTextColor = Theme.of(context).colorScheme.onTertiary;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.tertiary,
      body: Column(
        children: [
          Center(
              child: Image.asset(
            "assets/images/img 4.jpg",
            height: MediaQuery.of(context).size.height * 0.4,
          )),
          Expanded(
            child: Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor.withAlpha(130),
                  borderRadius:
                      const BorderRadius.vertical(top: Radius.circular(40))),
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2,
                      child: Text(
                        course.name,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          course.price,
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge
                              ?.copyWith(
                                  color:
                                      Theme.of(context).colorScheme.secondary),
                        ),
                        CourseRating(course: course, size: 2),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        buildFieldContainer(
                            context, "Classes", course.noOfClasses.toString()),
                        const SizedBox(
                          width: 20,
                        ),
                        buildFieldContainer(context, "Time", course.time),
                        const SizedBox(
                          width: 20,
                        ),
                        buildFieldContainer(context, "Classes",
                            course.seatsAvailable.toString()),
                      ],
                    ),
                    Text(
                      course.description,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: tertiaryTextColor),
                    ),
                    Row(
                      children: [
                        TextButton(
                            onPressed: () {},
                            style: ButtonStyle(
                                side: MaterialStatePropertyAll<BorderSide>(
                                    BorderSide(color: tertiaryTextColor)),
                                foregroundColor: MaterialStatePropertyAll<Color>(tertiaryTextColor)),
                            child: const Icon(Icons.close)),
                        const SizedBox(width: 20,),
                        Expanded(
                            child: TextButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor: Theme.of(context)
                                .iconButtonTheme
                                .style
                                ?.backgroundColor,
                          ),
                          child: const Text("Join Course"),
                        )),
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Container buildFieldContainer(
      BuildContext context, String label, String value) {
    final textStyle = Theme.of(context).textTheme.bodyMedium;
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Theme.of(context).primaryColor,
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).colorScheme.onPrimary.withAlpha(5),
              offset: const Offset(1.0, 1.0),
              blurRadius: 10.0,
            ),
            BoxShadow(
                color: Theme.of(context).colorScheme.onPrimary.withAlpha(5),
                offset: const Offset(-1.0, -1.0),
                blurRadius: 10.0),
          ]),
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(value,
              style: textStyle?.copyWith(
                  color: Theme.of(context).colorScheme.secondary)),
          Text(label, style: textStyle?.copyWith(
              color: Theme.of(context).colorScheme.onTertiary)),
        ],
      ),
    );
  }
}
