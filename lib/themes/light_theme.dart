import 'package:design_course/themes/basic_theme.dart';
import 'package:design_course/utils/custom_material_state_color.dart';
import 'package:flutter/material.dart';

const _primaryColor = Colors.white;
const secondaryColor = Colors.blue;
const primaryTextColor = Colors.black;
const secondaryTextColor = Colors.white;
const tertiaryColor = Color(0xFFEEF0FC);
const tertiaryTextColor = primaryTextColor;
final buttonColor = CustomMaterialStateColor(secondaryColor);
// final buttonTextColor = CustomMaterialStateColor(secondaryTextColor);

final ThemeData lightTheme = basicTheme.copyWith(

    colorScheme: basicTheme.colorScheme.copyWith(
      primary: _primaryColor,
      secondary: secondaryColor,
      onPrimary: primaryTextColor,
      background: _primaryColor,
      tertiary: tertiaryColor,
      onTertiary: tertiaryTextColor,
    ),
    chipTheme:  const ChipThemeData(
      backgroundColor: secondaryColor,
      labelStyle: TextStyle(color: secondaryTextColor),
    ),
  iconButtonTheme: IconButtonThemeData(
    style: ButtonStyle(
      backgroundColor: buttonColor,
      foregroundColor: const MaterialStatePropertyAll<Color>(secondaryTextColor),
      padding: const MaterialStatePropertyAll<EdgeInsetsGeometry>(EdgeInsets.all(2.0)),
      shape: MaterialStatePropertyAll<OutlinedBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)))
    )
  ),
  buttonTheme: ButtonThemeData(
    buttonColor: buttonColor,

  )
);
