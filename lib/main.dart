import 'package:design_course/blocs/app/app_bloc.dart';
import 'package:design_course/screens/course_detail.dart';
import 'package:design_course/themes/app_theme.dart';
import 'package:design_course/utils/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => AppBloc(),
      child: MaterialApp.router(
        title: 'Flutter Demo',
        theme: lightTheme,
        darkTheme: darkTheme,
        themeMode: ThemeMode.dark,
        routerConfig: router,


        // home: const Dashboard(),
        // home: CourseDetail(),
      ),
    );
  }
}

