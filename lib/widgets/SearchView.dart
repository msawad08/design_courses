import 'package:design_course/widgets/course_list.dart';
import 'package:design_course/widgets/search_input.dart';
import 'package:flutter/material.dart';

import '../models/course.dart';

class SearchView extends StatelessWidget {
  final List<Course> courses;
  final TextEditingController editingController;
  final dynamic onChange;
  final dynamic onBack;
  final String message;

  const SearchView(
      {Key? key,
      required this.courses,
      required this.editingController,
      this.onChange,
      this.onBack,
      required this.message})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).backgroundColor,

        title: SearchInput(
            editingController: editingController,
            onChange: onChange,
            autoFocus: true),
        centerTitle: false,
        leading: IconButton(
          onPressed: onBack,
          icon: const Icon(Icons.arrow_back_ios_new),
          style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll<Color>(
                  Theme.of(context).primaryColor),
              foregroundColor: MaterialStatePropertyAll<Color>(
                  Theme.of(context).colorScheme.onTertiary)),
        ),
      ),
      body: courses.isNotEmpty
          ? SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: CourseList(courses: courses),
              ),
            )
          : Center(
              child: Text(
                message,
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
    );
  }
}
