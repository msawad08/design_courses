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
import 'package:design_course/utils/show_snackbar.dart';
import 'package:design_course/widgets/VerticalCard.dart';
import 'package:design_course/widgets/course_detail_view.dart';
import 'package:design_course/widgets/horizontal_card.dart';
import 'package:design_course/widgets/popular_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../repositories/course_repository.dart';



class CourseDetailController extends StatefulWidget {
  const CourseDetailController({Key? key, required this.id}) : super(key: key);

  final int id;

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


  reloadData(BuildContext context) {
    context.read<CourseBloc>().add(GetCourseByIdEvent(widget.id));
  }


  @override
  Widget build(BuildContext context) {

    return BlocProvider(

      create: (context) =>
      CourseBloc(courseRepository: CourseRepository())..add(GetCourseByIdEvent(widget.id)),
      child: BlocConsumer<CourseBloc, CourseState>(
        listener: (context, state) {
          if (state.status == NetworkStatus.failed) {
            if(state.errorMessage == "Course Not Found"){
              showSnackBar(
                context: context,
                message: state.errorMessage,
                onAction: () => onClose(),
                actionLabel: "Go To Home"
              );
            }else{
              showSnackBar(
                context: context,
                message: state.errorMessage,
                onAction: () => reloadData(context),
              );
            }

          }
        },
          builder: (context, state) {
            if (state.status == NetworkStatus.loaded && state.courses.isNotEmpty) {
              return CourseDetailView(course: state.courses[0], onClose: onClose);
            }
            return Container();
          },
      ),
    );
  }

}
