import 'package:design_course/controller/course_card_controller.dart';
import 'package:design_course/models/course.dart';
import 'package:design_course/widgets/SelectionChip.dart';
import 'package:design_course/widgets/horizontal_card.dart';
import 'package:flutter/material.dart';

class CategoryView extends StatelessWidget {
  final List<String> categories;
  final List<Course> courses;
  final String selectedCategory;
  final dynamic onCategorySelected;

  const CategoryView(
      {super.key,
      this.categories = const [],
      this.courses = const [],
      required this.selectedCategory, required this.onCategorySelected});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child:
                Text("Category", style: Theme.of(context).textTheme.titleLarge),
          ),
          SizedBox(
              height: 50,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                itemBuilder: (context, int index) {
                  final category = categories[index];
                  return SelectionChip(category: category, label: category, selectedCategory: selectedCategory, onCategorySelected: onCategorySelected);
                },
                separatorBuilder: (BuildContext context, int index) =>
                    const SizedBox(
                  width: 10,
                ),
              )),
          SizedBox(
            height: 120,
            child: ListView.separated(
              itemCount: courses.length,
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(vertical: 12.0),
              itemBuilder: (context, index) {
                final course = courses[index];
                return CourseCardController(course: course, cardType: CourseCardType.horizontal,);
              },
              separatorBuilder: (BuildContext context, int index) =>
                  const SizedBox(
                width: 10,
              ),
            ),
          )
        ],
      ),
    );
  }
}



