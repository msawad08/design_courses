import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


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
      decoration:  InputDecoration(

        hintText: AppLocalizations.of(context)!.search_for_course,
        suffixIcon: const Icon(Icons.search),
        // border: OutlineInputBorder(),
      ),
    );
  }
}