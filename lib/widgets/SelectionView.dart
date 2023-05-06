

import 'package:design_course/widgets/SelectionChip.dart';
import 'package:flutter/material.dart';

class Option{
  final String label;
  final dynamic value;

  Option(this.label, this.value);
}

class SelectionView extends StatelessWidget {
  const SelectionView({
    super.key, required this.options, this.selectedValue, this.onSelect, required this.title,
  });

  final List<Option> options;
  final dynamic selectedValue;
  final dynamic onSelect;
  final String title;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: 10,),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: [
              SelectionChip(
                  category: "English",
                  label: "English",
                  selectedCategory: "English",
                  onCategorySelected: () {}),
              SelectionChip(
                  category: "arabic",
                  label: "arabic",
                  selectedCategory: "Englis",
                  onCategorySelected: () {}),
            ],
          )
        ],
      ),
    );
  }
}