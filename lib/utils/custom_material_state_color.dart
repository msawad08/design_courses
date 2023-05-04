
import 'package:flutter/material.dart';

class CustomMaterialStateColor extends MaterialStateColor {
  final MaterialColor color;

  CustomMaterialStateColor(this.color) : super(color.value);

  @override
  Color resolve(Set<MaterialState> states) {
    if (states.contains(MaterialState.pressed)) {
      return color.shade100; // Return a slightly transparent color when the button is pressed
    } else if (states.contains(MaterialState.hovered)) {
      return color.shade400; // Return a slightly transparent color when the button is hovered
    } else {
      return color; // Return the default color
    }
  }
}