
import 'dart:async';

import 'package:design_course/blocs/courses/course_event.dart';
import 'package:design_course/blocs/courses/course_state.dart';
import 'package:design_course/repositories/course_repository.dart';
import 'package:design_course/utils/network_status.dart';
import 'package:flutter_bloc/flutter_bloc.dart';




class CourseBloc extends Bloc<CourseEvent, CourseState> {
  final CourseRepository courseRepository;

  late StreamSubscription<NetworkStatus>
  _networkStatusSubscription;

  CourseBloc({
    required this.courseRepository,
  })  :super(const CourseState())
  {
    on<CourseChangeEvent>(_onCourseStatusChange);
    on<LoadCoursesEvent>(_onLoadCourse);
    on<SearchCoursesEvent>(_onSearchCourse);
    on<GetCourseByIdEvent>(_onGetCourseById);


    on<LoadPopularCoursesEvent>(_onLoadPopularCourse);
    _networkStatusSubscription = courseRepository.status.listen(
          (status) => add(CourseChangeEvent(status: status, error: courseRepository.errorMessage, courses: courseRepository.courses)),
    );
  }

  @override
  close() {
    _networkStatusSubscription.cancel();
    return super.close();
  }

  _onCourseStatusChange(
      CourseChangeEvent event,
      Emitter<CourseState> emit,
      ){
          emit(CourseState(status: event.status, courses: event.courses, errorMessage: event.error));
      }


  _onLoadCourse(LoadCoursesEvent event,
      Emitter<CourseState> emit){
    courseRepository.getCourses();
  }

  _onSearchCourse(SearchCoursesEvent event,
      Emitter<CourseState> emit){
    courseRepository.searchCourses(event.query);
  }

  _onGetCourseById(GetCourseByIdEvent event,
      Emitter<CourseState> emit){
    courseRepository.getCourseById(event.id);
  }

  _onLoadPopularCourse(LoadPopularCoursesEvent event,
      Emitter<CourseState> emit){
    courseRepository.getPopularCourses();
  }


}