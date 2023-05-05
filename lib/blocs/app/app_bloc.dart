
import 'dart:async';

import 'package:design_course/blocs/app/app_event.dart';
import 'package:design_course/blocs/app/app_state.dart';
import 'package:design_course/utils/router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppBloc extends Bloc<AppEvent, AppState>{
  AppBloc(): super(const AppState()){
    on<SelectCourseEvent>(_onSelectCourse);
  }



  FutureOr<void> _onSelectCourse(SelectCourseEvent event, Emitter<AppState> emit) {
    emit(state.copyWith(selectedCourse: event.course));
    router.push("/course");
  }
}