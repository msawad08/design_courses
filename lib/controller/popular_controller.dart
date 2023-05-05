import 'package:design_course/blocs/courses/course_bloc.dart';
import 'package:design_course/blocs/courses/course_event.dart';
import 'package:design_course/blocs/courses/course_state.dart';
import 'package:design_course/utils/network_status.dart';
import 'package:design_course/widgets/popular_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../repositories/course_repository.dart';

class PopularController extends StatelessWidget {
  const PopularController({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("in popular controller");
    return BlocProvider(

            create: (context) =>
                CourseBloc(courseRepository: CourseRepository()),
      child: BlocConsumer<CourseBloc, CourseState>(
        listener: (context, state){
            if(state.status == NetworkStatus.unknown){
                context.read<CourseBloc>().add(LoadPopularCoursesEvent());
            }
        },
          builder: (context, state) {
        // if (state.status == NetworkStatus.loaded &&
        //     state.categories.isNotEmpty && state.selectedCategory.isNotEmpty) {
          return PopularView( courses: state.courses,);
        return Container();
      }
      ),
    );
  }
}
