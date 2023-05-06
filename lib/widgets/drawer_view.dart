import 'package:design_course/widgets/SelectionView.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class DrawerView extends StatelessWidget {
  const DrawerView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      // Important: Remove any padding from the ListView.
      padding: EdgeInsets.zero,
      children: [
        DrawerHeader(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.tertiary,
          ),
          child: Align(
              alignment: const Alignment(-1.0, 1.0),
              child: Text(
                "",
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(color: Theme.of(context).colorScheme.onTertiary),
              )),
        ),
        SelectionView(
          title: AppLocalizations.of(context)!.choose_theme,
          options: [
            Option(AppLocalizations.of(context)!.dark, ThemeMode.dark),
            Option(AppLocalizations.of(context)!.light, ThemeMode.light),
            Option(AppLocalizations.of(context)!.system, ThemeMode.system),
          ],
          selectedValue: ThemeMode.dark,
          onSelect: (a, b) {},
        ),
      ],
    );
  }
}
