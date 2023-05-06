import 'package:design_course/blocs/courses/course_bloc.dart';
import 'package:design_course/blocs/courses/course_event.dart';
import 'package:design_course/blocs/courses/course_state.dart';
import 'package:design_course/utils/network_status.dart';
import 'package:design_course/utils/show_snackbar.dart';
import 'package:design_course/widgets/popular_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


import '../repositories/course_repository.dart';

class PopularController extends StatelessWidget {
  const PopularController({Key? key}) : super(key: key);

  reloadData(BuildContext context) {
    context.read<CourseBloc>().add(LoadPopularCoursesEvent());
  }

  @override
  Widget build(BuildContext context) {
    final locale = AppLocalizations.of(context)!.localeName;
    return BlocProvider(
      create: (context) => CourseBloc(courseRepository: CourseRepository(locale: locale))
        ..add(LoadPopularCoursesEvent()),
      child: BlocConsumer<CourseBloc, CourseState>(
        listener: (context, state) {
          if (state.status == NetworkStatus.failed) {
            showSnackBar(
              context: context,
              message: state.errorMessage,
              onAction: () => reloadData(context),
            );
          }
        },
        builder: (context, state) {
          return PopularView(
            courses: state.courses,
          );
        },
      ),
    );
  }
}
