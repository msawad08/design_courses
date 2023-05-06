import 'package:design_course/blocs/app/app_bloc.dart';
import 'package:design_course/screens/course_detail.dart';
import 'package:design_course/themes/app_theme.dart';
import 'package:design_course/utils/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AppBloc()),

      ],
      child: MaterialApp.router(
        title: 'Design Courses',
        onGenerateTitle: (context) => AppLocalizations.of(context)!.title,
        theme: lightTheme,
        darkTheme: darkTheme,
        themeMode: ThemeMode.light,
        routerConfig: router,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        locale: const Locale("ar"),
      ),
    );
  }
}

