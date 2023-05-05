import 'package:design_course/themes/basic_theme.dart';
import 'package:design_course/utils/custom_material_state_color.dart';
import 'package:flutter/material.dart';

const _primaryColor = Colors.white;
const secondaryColor = Colors.blue;
const primaryTextColor = Colors.black;
const secondaryTextColor = Colors.white;
// const tertiaryColor = Color(0xFFEEF0FC);
const tertiaryColor = Color(0xFFF5F8FE);

final tertiaryTextColor = primaryTextColor.withOpacity(0.5);
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
    scaffoldBackgroundColor: _primaryColor,

    backgroundColor: _primaryColor,
    chipTheme:   ChipThemeData(
      backgroundColor: _primaryColor,
      side: const BorderSide(color: secondaryColor),
      secondaryLabelStyle: const TextStyle(color: secondaryTextColor),
      labelStyle: const TextStyle(color: secondaryColor),
      shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(30)),
      selectedColor: secondaryColor
    ),
  iconButtonTheme: IconButtonThemeData(

    style: ButtonStyle(
      backgroundColor: buttonColor,
      foregroundColor: const MaterialStatePropertyAll<Color>(secondaryTextColor),
      padding: const MaterialStatePropertyAll<EdgeInsetsGeometry>(EdgeInsets.all(2.0)),
      shape: MaterialStatePropertyAll<OutlinedBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),

    ),

  ),
  textTheme: basicTheme.textTheme.copyWith(
    labelLarge:  const TextStyle(
      color: primaryTextColor,
    ),
  ),
  buttonTheme: ButtonThemeData(
    buttonColor: buttonColor,
    // textTheme: ButtonTextTheme.accent,


  ),
  inputDecorationTheme:  InputDecorationTheme(
    fillColor: tertiaryColor,
    filled: true,
    border: const OutlineInputBorder(borderSide: BorderSide.none),
    suffixIconColor: primaryTextColor.withAlpha(80),
  ),

);
