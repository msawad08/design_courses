
import 'dart:async';

import 'package:design_course/blocs/app/app_event.dart';
import 'package:design_course/blocs/app/app_state.dart';
import 'package:design_course/utils/router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppBloc extends Bloc<AppEvent, AppState>{
  AppBloc(): super(const AppState()){
    on<ChangeAppTheme>(_onChangeTheme);
    on<ChangeAppLanguage>(_onChangeLanguage);

  }



  FutureOr<void> _onChangeTheme(ChangeAppTheme event, Emitter<AppState> emit) {
    emit(state.copyWith(themeType: event.theme));
  }

  FutureOr<void> _onChangeLanguage(ChangeAppLanguage event, Emitter<AppState> emit) {
    emit(state.copyWith(locale: event.value));
  }
}