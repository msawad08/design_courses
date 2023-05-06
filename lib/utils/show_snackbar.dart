import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


void showSnackBar(
    {required BuildContext context, String message = "failed_to_fetch_data", actionLabel= "retry", dynamic onAction }) {
  ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(getMessage(context, message)),
        action: onAction != null ? SnackBarAction(label: getMessage(context, actionLabel), onPressed: onAction,): null,
      )
  );
}

String getMessage(BuildContext context, String message){
  switch(message){
    case "retry": return AppLocalizations.of(context)!.retry;
    case "failed_to_fetch_data": return AppLocalizations.of(context)!.failed_to_fetch_data;
    case "course_fetch_failed": return AppLocalizations.of(context)!.course_fetch_failed;
    case "course_not_found": return AppLocalizations.of(context)!.course_not_found;
    case "category_fetch_failed": return AppLocalizations.of(context)!.category_fetch_failed;
    case "goto_home": return AppLocalizations.of(context)!.goto_home;


  }
  return "";
}