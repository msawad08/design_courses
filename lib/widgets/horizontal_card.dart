import 'package:design_course/models/course.dart';
import 'package:design_course/widgets/course_card_rating.dart';
import 'package:design_course/widgets/course_card_title.dart';
import 'package:flutter/material.dart';

class HorizontalCard extends StatelessWidget {
  const HorizontalCard({
    super.key,
    required this.course, required this.onSelect,
  });

  final Course course;
  final dynamic onSelect;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onSelect,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 100,
            width: 180,
            child: Stack(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                            Radius.circular(10)),
                        color: Theme.of(context).colorScheme.tertiary,
                      ),
                      width: 160,
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      clipBehavior: Clip.antiAlias,
                      child: Image.asset(
                        "assets/images/img 1.jpg",
                        width: 60,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            CourseCardTitle(course: course),
                            CourseCardRating(course: course),
                            Padding(
                              padding:
                              const EdgeInsets.only(top: 2.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    course.price,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge
                                        ?.copyWith(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .secondary),
                                  ),
                                  SizedBox(
                                      width: 20,
                                      height: 20,
                                      child: IconButton(
                                        onPressed: () {},
                                        icon: const Icon(Icons.add),
                                        iconSize: 12,
                                      )),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}