
import 'dart:async';

import 'package:design_course/blocs/category/category_event.dart';
import 'package:design_course/blocs/category/category_state.dart';
import 'package:design_course/blocs/courses/course_state.dart';
import 'package:design_course/repositories/category_repository.dart';
import 'package:design_course/repositories/course_repository.dart';
import 'package:design_course/utils/network_status.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';




class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  final CategoryRepository categoryRepository;
  final CourseRepository courseRepository;

  late StreamSubscription<NetworkStatus>
  _networkStatusSubscription;

  CategoryBloc({
    required this.categoryRepository,
    required this.courseRepository,
  })  :super(const CategoryState())
  {
    on<CategoryChangeEvent>(_onCategoryStatusChange);
    on<CourseChangeEvent>(_onCourseStatusChange);
    on<LoadCategoryEvent>(_onLoadCategory);
    on<ChangeSelectedCategory>(_onChangeSelectedCategory);
    _networkStatusSubscription = categoryRepository.status.listen(
          (status) => add(CategoryChangeEvent(status: status, error: categoryRepository.errorMessage, categories: categoryRepository.categories)),
    );
    _networkStatusSubscription = courseRepository.status.listen(
          (status) => add(CourseChangeEvent(status: status, error: courseRepository.errorMessage, courses: courseRepository.courses)),
    );
    categoryRepository.getCategories();

  }

  @override
  close() {
    _networkStatusSubscription.cancel();
    return super.close();
  }

  _onCategoryStatusChange(
      CategoryChangeEvent event,
      Emitter<CategoryState> emit,
      ){
    emit(state.copyWith(status: event.status, categories: event.categories, errorMessage: event.error, courseState: const CourseState()));

    if(event.status == NetworkStatus.loaded && event.categories.isNotEmpty){
      emit(state.copyWith(selectedCategory:  event.categories.first));
      courseRepository.getCoursesOfCategory(event.categories.first);
    }
  }

  _onCourseStatusChange(
      CourseChangeEvent event,
      Emitter<CategoryState> emit,
      ){
    emit(state.copyWith(courseState: CourseState(status: event.status, courses: event.courses, errorMessage: event.error)));
  }


  _onLoadCategory(LoadCategoryEvent event,
      Emitter<CategoryState> emit){
    categoryRepository.getCategories();
  }

  _onChangeSelectedCategory(ChangeSelectedCategory event,
      Emitter<CategoryState> emit){
    emit(state.copyWith(selectedCategory: event.category, courseState: const CourseState()));
    courseRepository.getCoursesOfCategory(event.category);
  }


}