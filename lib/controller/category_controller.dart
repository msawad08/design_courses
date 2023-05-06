import 'package:design_course/blocs/category/category_bloc.dart';
import 'package:design_course/blocs/category/category_event.dart';
import 'package:design_course/blocs/category/category_state.dart';
import 'package:design_course/blocs/courses/course_bloc.dart';
import 'package:design_course/blocs/courses/course_state.dart';
import 'package:design_course/repositories/category_repository.dart';
import 'package:design_course/utils/network_status.dart';
import 'package:design_course/utils/show_snackbar.dart';
import 'package:design_course/widgets/category_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


import '../repositories/course_repository.dart';

class CategoryController extends StatefulWidget {
  const CategoryController({Key? key}) : super(key: key);

  @override
  State<CategoryController> createState() => _CategoryControllerState();
}

class _CategoryControllerState extends State<CategoryController> {
  onChangeSelectedCategory(BuildContext context, String category) =>
      context.read<CategoryBloc>().add(ChangeSelectedCategory(category));

  reloadCategory(BuildContext context) =>
      context.read<CategoryBloc>().add(LoadCategoryEvent());


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CategoryBloc(
          courseRepository: CourseRepository(),
          categoryRepository: CategoryRepository()),
      child: BlocConsumer<CategoryBloc, CategoryState>(
        listener: (context, state) {
          if(state.status == NetworkStatus.failed){
            showSnackBar(
                context: context,
                message: state.errorMessage,
                onAction: () => reloadCategory(context),
            );
          }else if(state.courseState.status == NetworkStatus.failed){
            showSnackBar(
              context: context,
              message: state.errorMessage,
              onAction: () => onChangeSelectedCategory(context, state.selectedCategory),
            );
          }
        },
        builder: (context, state) {
          return CategoryView(
            categories: state.categories,
            courses: state.courseState.courses,
            selectedCategory: state.selectedCategory,
            onCategorySelected: onChangeSelectedCategory,
          );
        },
      ),
    );
  }

}
