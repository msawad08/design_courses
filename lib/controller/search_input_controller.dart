import 'package:design_course/widgets/search_input.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SearchInputController extends StatefulWidget {
  const SearchInputController({Key? key}) : super(key: key);

  @override
  State<SearchInputController> createState() => _SearchInputControllerState();
}

class _SearchInputControllerState extends State<SearchInputController> {
  onTap(){
    context.go("/search");
  }

  @override
  Widget build(BuildContext context) {
    return SearchInput(onTap: onTap);
  }
}
