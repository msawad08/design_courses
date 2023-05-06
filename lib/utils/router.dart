import 'package:design_course/controller/course_detail_controller.dart';
import 'package:design_course/screens/dashboard.dart';
import 'package:design_course/screens/search_screen.dart';
import 'package:go_router/go_router.dart';

import '../screens/course_detail.dart';


final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const Dashboard(),
    ),
    GoRoute(
      path: '/course/:id',
      builder: (context, state) => CourseDetail(id: int.tryParse(state.pathParameters['id']?? "1") ?? 1,),
    ),
    GoRoute(
      path: '/search',
      builder: (context, state) => const SearchScreen(query: "test"),
    ),
  ],
);

