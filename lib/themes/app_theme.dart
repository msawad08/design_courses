import 'package:design_course/themes/base_theme.dart';
import 'package:design_course/utils/custom_material_state_color.dart';
import 'package:flutter/material.dart';

const primaryColor = Colors.white;
const secondaryColor = Colors.blue;
const primaryTextColor = Colors.black;
const secondaryTextColor = Colors.white;
// const tertiaryColor = Color(0xFFEEF0FC);
const tertiaryColor = Color(0xFFF5F8FE);
const tertiaryColorDark = Color(0xff515c93);
final tertiaryTextColor = primaryTextColor.withOpacity(0.5);
final tertiaryTextColorDark = primaryColor.withOpacity(0.5);
final buttonColor = CustomMaterialStateColor(secondaryColor);
// final buttonTextColor = CustomMaterialStateColor(secondaryTextColor);



ThemeData getTheme({
  primaryColor, secondaryColor, primaryTextColor, secondaryTextColor, tertiaryColor, buttonColor, tertiaryTextColor, brightness
}){
  return  baseTheme.copyWith(
    brightness:  brightness,
  primaryColor: primaryColor,
    colorScheme: baseTheme.colorScheme.copyWith(
      primary: primaryColor,
      secondary: secondaryColor,
      onPrimary: primaryTextColor,
      background: primaryColor,
      tertiary: tertiaryColor,
      onTertiary: tertiaryTextColor,
    ),
    scaffoldBackgroundColor: primaryColor,

    backgroundColor: primaryColor,
    drawerTheme: DrawerThemeData(
      backgroundColor: primaryColor,

    ),
    chipTheme:   ChipThemeData(
        backgroundColor: primaryColor,
        side:  BorderSide(color: secondaryColor),
        secondaryLabelStyle: TextStyle(color: secondaryTextColor),
        labelStyle: TextStyle(color: secondaryColor),
        shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(30)),
        selectedColor: secondaryColor
    ),
    iconButtonTheme: IconButtonThemeData(

      style: ButtonStyle(
        backgroundColor: buttonColor,
        foregroundColor: MaterialStatePropertyAll<Color>(secondaryTextColor),
        padding:  const MaterialStatePropertyAll<EdgeInsetsGeometry>(EdgeInsets.all(2.0)),
        shape: MaterialStatePropertyAll<OutlinedBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),

      ),

    ),

    textTheme: baseTheme.textTheme.copyWith(
      titleLarge: TextStyle(fontWeight: FontWeight.bold, color: primaryTextColor),
      titleMedium: TextStyle(fontWeight: FontWeight.w600, color: primaryTextColor),
      bodyLarge: TextStyle(fontWeight: FontWeight.w800, fontSize: 12, color: primaryTextColor),
      bodyMedium: TextStyle(fontWeight: FontWeight.normal, fontSize: 12, color: primaryTextColor),
      bodySmall: TextStyle(fontWeight: FontWeight.normal, fontSize: 10, color: primaryTextColor),
        labelLarge:  TextStyle(
          color: primaryTextColor,
        )
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: buttonColor,
      // textTheme: ButtonTextTheme.accent,


    ),
    inputDecorationTheme:  InputDecorationTheme(
      fillColor: tertiaryColor,
      filled: true,
      border:  const OutlineInputBorder(borderSide: BorderSide.none),
      suffixIconColor: primaryTextColor.withAlpha(80),
    ),

  );
}

final lightTheme = getTheme(
  primaryColor: primaryColor,
  secondaryColor: secondaryColor,
  primaryTextColor: primaryTextColor,
  secondaryTextColor: secondaryTextColor,
  tertiaryColor: tertiaryColor,
  buttonColor: buttonColor,
    tertiaryTextColor: tertiaryTextColor,
    brightness: Brightness.light,
);

final darkTheme = getTheme(
  primaryColor: primaryTextColor,
  secondaryColor: secondaryColor,
  primaryTextColor: primaryColor,
  secondaryTextColor: primaryColor,
  tertiaryColor: tertiaryColorDark,
  buttonColor: buttonColor,
    tertiaryTextColor: tertiaryTextColorDark,
  brightness: Brightness.dark,

);

