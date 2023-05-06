import 'package:design_course/blocs/app/app_bloc.dart';
import 'package:design_course/blocs/app/app_event.dart';
import 'package:design_course/blocs/courses/course_bloc.dart';
import 'package:design_course/blocs/courses/course_event.dart';
import 'package:design_course/blocs/courses/course_state.dart';
import 'package:design_course/models/course.dart';
import 'package:design_course/utils/network_status.dart';
import 'package:design_course/widgets/VerticalCard.dart';
import 'package:design_course/widgets/horizontal_card.dart';
import 'package:design_course/widgets/popular_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../repositories/course_repository.dart';

enum CourseCardType {
  horizontal,
  vertical
}

class CourseCardController extends StatefulWidget {
  final CourseCardType cardType;
  final Course course;
  const CourseCardController({Key? key, required this.cardType, required this.course}) : super(key: key);

  @override
  State<CourseCardController> createState() => _CourseCardControllerState();
}

class _CourseCardControllerState extends State<CourseCardController> {
  onSelect() =>
    context.push("/course/${widget.course.id}");


  @override
  Widget build(BuildContext context) {
      switch(widget.cardType){

        case CourseCardType.horizontal:
          return HorizontalCard(course: widget.course, onSelect: onSelect);
          break;
        case CourseCardType.vertical:
          return VerticalCard(course: widget.course, onSelect: onSelect);
          break;
      }
  }
}
