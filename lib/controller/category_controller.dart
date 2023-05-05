import 'package:design_course/blocs/category/category_bloc.dart';
import 'package:design_course/blocs/category/category_event.dart';
import 'package:design_course/blocs/category/category_state.dart';
import 'package:design_course/blocs/courses/course_bloc.dart';
import 'package:design_course/blocs/courses/course_state.dart';
import 'package:design_course/repositories/category_repository.dart';
import 'package:design_course/utils/network_status.dart';
import 'package:design_course/widgets/category_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../repositories/course_repository.dart';

class CategoryController extends StatelessWidget {
  const CategoryController({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(

            create: (context) =>
                CategoryBloc(courseRepository: CourseRepository(), categoryRepository: CategoryRepository()),
      child: BlocBuilder<CategoryBloc, CategoryState>(builder: (context, state) {

        // if (state.status == NetworkStatus.loaded &&
        //     state.categories.isNotEmpty && state.selectedCategory.isNotEmpty) {
          return CategoryView(categories: state.categories, courses: state.courseState.courses,);
        return Container();
      }),
    );
  }
}
