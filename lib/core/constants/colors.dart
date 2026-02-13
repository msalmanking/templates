import 'package:flutter/material.dart';

// ignore_for_file: deprecated_member_use
const Color primaryColor = Color(0xFFFFFFFF);

const Color secondaryColor = Color(0xff0070FF);
const Color bgcolor = Color(0xff242632);

// background colors
const Color backgroundColorLight = Color(0xFFFFFFFF);
const Color backgroundColorDark = Color(0xFF000000);
// const Color backgroundColorDark = Color(0xFF1E1E1E);

// card colors
const Color cardColorLight = Color(0xFFFFFFFF);
const Color cardColorDark = Color(0xFF2A2A2A);

const Color transparent = Colors.transparent;

// shadow colors
const Color shadowColorLight = Color(0x25000000);
const Color shadowColorDark = Color(0xFF4F4E4E);

// divider colors
const Color dividerColorLight = Color(0xFFF6F6F6);
const Color dividerColorDark = Color(0xFF3F3F3F);

// disabled colors
const Color disabledColorLight = Color(0xFF858585);
Color disabledColorDark = const Color(0xFFB0B0B0);

// hint colors
const Color hintColorLight = Color(0xFF909090);
const Color hintColorDark = Color(0xFF909090);

// text colors
const Color textColorLight = Colors.black;
const Color textColorDark = Colors.white;
const Color descriptionGrey = Color(0xff71727A);

// icon colors
const Color iconColorLight = Color(0xff606060);
const Color iconColorDark = Color(0xFF909090);

const Color bgbutton = Color(0xff6D5AE7);
const Color iconbg = Color(0xFFEF4444);

const Color onPrimary = Color(0xff006FFD);
const Color onSurface = Colors.black;

// Location indicator colors
const Color pickupIndicatorColor = Color(0xFF006FFD); // Green for pickup
const Color dropoffIndicatorColor = Color(0xFFEF4444); // Red for dropoff
const Color stop1IndicatorColor = Color(0xFFFB923C); // Orange for stop 1
const Color stop2IndicatorColor = Color(0xFF6D5AE7); // Purple for stop 2
const Color iconColor = Color(0xFFF472B6); // Pink for stop 3
const Color mapLocationColor = Color(0xFF22D3EE); // Cyan for map location icon

//onetime usage
const Color inverseSurface = Color(0xFFFFE661);
const Color error = Colors.red;
const Color inversePrimary = Color(0xFF28A745);

// gradient

LinearGradient get primaryGradientTopRightBottom => const LinearGradient(
  colors: [secondaryColor, primaryColor],
  stops: [0.4, 1.0],
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
);
LinearGradient get primaryGradientRightBottom => LinearGradient(
  colors: [
    secondaryColor.withValues(alpha: 0.8),
    primaryColor.withValues(alpha: 0.1),
  ],
  stops: const [0.15, 1.0],
  begin: Alignment.topRight,
  end: Alignment.bottomLeft,
);
LinearGradient get buttonGradient => const LinearGradient(
  colors: [primaryColor, secondaryColor],
  stops: [0.02, .5],
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
);
