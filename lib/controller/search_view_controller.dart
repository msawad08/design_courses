import 'package:design_course/blocs/courses/course_bloc.dart';
import 'package:design_course/blocs/courses/course_event.dart';
import 'package:design_course/blocs/courses/course_state.dart';
import 'package:design_course/utils/network_status.dart';
import 'package:design_course/utils/show_snackbar.dart';
import 'package:design_course/widgets/SearchView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../repositories/course_repository.dart';
import '../utils/debounce.dart';

class SearchViewController extends StatefulWidget {
  const SearchViewController({Key? key}) : super(key: key);

  @override
  State<SearchViewController> createState() => _SearchViewControllerState();
}

class _SearchViewControllerState extends State<SearchViewController> {
  late TextEditingController editingController;
  late Debounce debounce;

  loadSearchData(BuildContext context) {
    if(editingController.text.isNotEmpty) {
      context.read<CourseBloc>().add(SearchCoursesEvent(editingController.text));
    }else{
      context.read<CourseBloc>().add(ResetCourses());
    }
  }

  onBack() {
    context.canPop() ? context.pop() : context.replace("/");
  }

  @override
  void initState() {
    editingController = TextEditingController();
    debounce = Debounce(const Duration(microseconds: 400), loadSearchData);
    // editingController.addListener(() => debounce(context));
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    editingController.dispose();
    debounce.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CourseBloc(courseRepository: CourseRepository()),
      child: BlocConsumer<CourseBloc, CourseState>(
        listener: (context, state) {
          if (state.status == NetworkStatus.failed) {
            showSnackBar(
              context: context,
              message: state.errorMessage,
              onAction: () => loadSearchData(context),
            );
          }
        },
        builder: (context, state) {

          return SearchView(
            courses: state.courses,
            editingController: editingController,
            onChange: debounce,
            onBack: onBack,
            message: getMessage(state),
          );
        },
      ),
    );
  }

  String getMessage(CourseState state) {

    if(state.courses.isNotEmpty) {
      return "";
    }
    if(state.status == NetworkStatus.loading) {
      return  "Loading...";
    }
    if(editingController.text.isEmpty) {
      return "Enter Course Name To Search";
    }
    return "No Courses Found Matching The Search Query";
  }
}
