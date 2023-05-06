import 'package:design_course/widgets/search_input.dart';
import 'package:flutter/material.dart';

import '../controller/search_view_controller.dart';

class SearchScreen extends StatelessWidget {
  final String query;
  const SearchScreen({Key? key, required this.query}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SearchViewController(),
    );
  }
}
