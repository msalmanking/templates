import 'package:flutter/material.dart';

TextStyle _apply(
  TextStyle base, {
  FontWeight? fontWeight,

  Color? textColor,
  double? letterSpacing,
}) {
  return base.copyWith(
    fontWeight: fontWeight ?? base.fontWeight,
    color: textColor ?? base.color,
    letterSpacing: letterSpacing ?? base.letterSpacing,
  );
}

TextStyle displayLarge(
  BuildContext context, {
  FontWeight? fontWeight,
  Color? textColor,
}) => _apply(
  Theme.of(context).textTheme.displayLarge!,
  fontWeight: fontWeight,
  textColor: textColor,
);

TextStyle displayMedium(
  BuildContext context, {
  FontWeight? fontWeight,
  Color? color,
}) => _apply(
  Theme.of(context).textTheme.displayMedium!,
  fontWeight: fontWeight,
  textColor: color,
);

TextStyle displaySmall(
  BuildContext context, {
  FontWeight? fontWeight,
  Color? color,
}) => _apply(
  Theme.of(context).textTheme.displaySmall!,
  fontWeight: fontWeight,
  textColor: color,
);

TextStyle headlineLarge(
  BuildContext context, {
  FontWeight? fontWeight,
  Color? color,
}) => _apply(
  Theme.of(context).textTheme.headlineLarge!,
  fontWeight: fontWeight,
  textColor: color,
);

TextStyle headlineMedium(
  BuildContext context, {
  FontWeight? fontWeight,
  Color? color,
}) => _apply(
  Theme.of(context).textTheme.headlineMedium!,
  fontWeight: fontWeight,
  textColor: color,
);

TextStyle headlineSmall(
  BuildContext context, {
  FontWeight? fontWeight,
  Color? color,
}) => _apply(
  Theme.of(context).textTheme.headlineSmall!,
  fontWeight: fontWeight,
  textColor: color,
);

TextStyle titleLarge(
  BuildContext context, {
  FontWeight? fontWeight,
  Color? color,
}) => _apply(
  Theme.of(context).textTheme.titleLarge!,
  fontWeight: fontWeight,
  textColor: color,
);

TextStyle titleMedium(
  BuildContext context, {
  FontWeight? fontWeight,
  Color? color,
}) => _apply(
  Theme.of(context).textTheme.titleMedium!,
  fontWeight: fontWeight,
  textColor: color,
);

TextStyle titleSmall(
  BuildContext context, {
  FontWeight? fontWeight,
  Color? color,
}) => _apply(
  Theme.of(context).textTheme.titleSmall!,
  fontWeight: fontWeight,
  textColor: color,
);

TextStyle bodyLarge(
  BuildContext context, {
  FontWeight? fontWeight,
  Color? color,
}) => _apply(
  Theme.of(context).textTheme.bodyLarge!,
  fontWeight: fontWeight,
  textColor: color,
);

TextStyle bodyMedium(
  BuildContext context, {
  FontWeight? fontWeight,
  Color? color,
}) => _apply(
  Theme.of(context).textTheme.bodyMedium!,
  fontWeight: fontWeight,
  textColor: color,
);

TextStyle bodySmall(
  BuildContext context, {
  FontWeight? fontWeight,
  Color? color,
}) => _apply(
  Theme.of(context).textTheme.bodySmall!,
  fontWeight: fontWeight,
  textColor: color,
);

TextStyle labelLarge(
  BuildContext context, {
  FontWeight? fontWeight,
  Color? color,
}) => _apply(
  Theme.of(context).textTheme.labelLarge!,
  fontWeight: fontWeight,
  textColor: color,
);

TextStyle labelMedium(
  BuildContext context, {
  FontWeight? fontWeight,
  Color? color,
}) => _apply(
  Theme.of(context).textTheme.labelMedium!,
  fontWeight: fontWeight,
  textColor: color,
);

TextStyle labelSmall(
  BuildContext context, {
  FontWeight? fontWeight,
  Color? color,
}) => _apply(
  Theme.of(context).textTheme.labelSmall!,
  fontWeight: fontWeight,
  textColor: color,
);

extension ThemeContext on BuildContext {
  ThemeData get theme => Theme.of(this);
}
