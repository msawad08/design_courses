import 'package:flutter/material.dart';

void showSnackBar(
    {required BuildContext context, String message = "Failed to fetch data", actionLabel= "Retry", dynamic onAction }) {
  ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        action: onAction != null ? SnackBarAction(label: actionLabel, onPressed: onAction,): null,
      )
  );
}