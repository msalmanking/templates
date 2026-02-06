import 'package:flutter/material.dart';
import 'package:templates/utils/colors.dart';

ThemeData light(BuildContext context) => ThemeData(
  fontFamily: 'Poppins',
  useMaterial3: true,
  brightness: Brightness.light,
  primaryColor: primaryColor,
  secondaryHeaderColor: secondaryColor,
  disabledColor: disabledColorLight,
  scaffoldBackgroundColor: backgroundColorLight,
  hintColor: hintColorLight,
  cardColor: cardColorLight,
  shadowColor: shadowColorLight, //shadowColorLight
  colorScheme: ColorScheme.fromSeed(
    seedColor: primaryColor,
    secondary: const Color.fromRGBO(5, 154, 252, 1),
    error: error,
    inversePrimary: inversePrimary,
    inverseSurface: inverseSurface,
    onPrimary: onPrimary, //on porimary
    onSurface: onSurface,
  ).copyWith(outline: dividerColorLight),
  // textTheme: textThemeLight(context),
  // iconTheme: iconThemeLight(context),
  // appBarTheme: appBarThemeLight(context),
  // elevatedButtonTheme: elevatedButtonThemeData(context),
  // outlinedButtonTheme: outlinedButtonThemeData(context),
  // textButtonTheme: textButtonTheme(context),
  // inputDecorationTheme: inputDecorationThemeLight(context),
  // dropdownMenuTheme: dropdownMenuThemeLight(context),
  // dialogTheme: dialogThemeLight(context),
  // bottomSheetTheme: bottomSheetThemeLight(context),
  // dividerTheme: dividerThemeLight(context),
);
