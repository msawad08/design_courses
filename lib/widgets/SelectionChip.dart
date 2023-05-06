import 'package:flutter/material.dart';

class SelectionChip extends StatelessWidget {
  const SelectionChip({
    super.key,
    required this.category,
    required this.selectedCategory,
    required this.onCategorySelected, required this.label,
  });

  final dynamic category;
  final String selectedCategory;
  final dynamic onCategorySelected;
  final String label;

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      label: Text(label),
      selected: selectedCategory == category,
      onSelected: (b) => onCategorySelected(context, category),
      shape: Theme.of(context).chipTheme.shape,
    );
  }
}