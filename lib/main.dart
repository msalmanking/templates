import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:templates/features/app/view/onboard_screen.dart';
import 'package:templates/theme/dark_theme.dart';
import 'package:templates/theme/light_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: light(context),
          darkTheme: dark(context),
          home: child,
        );
      },
      child: const OnboardingScreen(),
    );
  }
}
