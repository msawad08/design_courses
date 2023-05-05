import 'package:design_course/blocs/app/app_bloc.dart';
import 'package:design_course/blocs/app/app_event.dart';
import 'package:design_course/blocs/app/app_state.dart';
import 'package:design_course/blocs/courses/course_bloc.dart';
import 'package:design_course/blocs/courses/course_event.dart';
import 'package:design_course/blocs/courses/course_state.dart';
import 'package:design_course/models/course.dart';
import 'package:design_course/screens/course_detail.dart';
import 'package:design_course/utils/network_status.dart';
import 'package:design_course/utils/router.dart';
import 'package:design_course/widgets/VerticalCard.dart';
import 'package:design_course/widgets/horizontal_card.dart';
import 'package:design_course/widgets/popular_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../repositories/course_repository.dart';



class CourseDetailController extends StatefulWidget {
  const CourseDetailController({Key? key}) : super(key: key);

  @override
  State<CourseDetailController> createState() => _CourseDetailControllerState();
}

class _CourseDetailControllerState extends State<CourseDetailController> {
  onClose() {
    if(context.canPop()){
      context.pop();
    }else{
      context.replace("/");
    }
  }




  @override
  Widget build(BuildContext context) {

      return BlocConsumer<AppBloc, AppState>(
        listener: (context, state) {
          if(state.selectedCourse == null) onClose();
        },
        builder: (context, state) {
          if(state.selectedCourse != null) {
            return CourseDetail(course: state.selectedCourse!, onClose: onClose,);
          }

          return Container();
        },
      );
  }
}
