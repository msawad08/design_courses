import 'package:flutter/material.dart';

class SearchInput extends StatelessWidget {

  final dynamic onTap;
  final TextEditingController? editingController;
  final dynamic onChange;
  final bool autoFocus;

  const SearchInput({
    super.key, this.onTap, this.editingController, this.onChange,  this.autoFocus = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      onTap: onTap,controller: editingController,
      autofocus: autoFocus,

      onChanged: (value) => onChange(context),
      decoration: const InputDecoration(

        hintText: 'Search',
        suffixIcon: Icon(Icons.search),
        // border: OutlineInputBorder(),
      ),
    );
  }
}