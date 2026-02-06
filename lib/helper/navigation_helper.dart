import 'package:flutter/material.dart';

void launchScreen(
  BuildContext context,
  Widget screen, {
  bool replace = false,
  bool removeUntil = false,
}) {
  if (removeUntil) {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => screen),
      (route) => false,
    );
  } else if (replace) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => screen),
    );
  } else {
    Navigator.push(context, MaterialPageRoute(builder: (context) => screen));
  }
}
