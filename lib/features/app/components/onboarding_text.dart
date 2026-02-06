import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:templates/utils/style.dart';

class OnboardingText extends StatelessWidget {
  final String title;
  final String description;

  const OnboardingText({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: headlineSmall(context, fontWeight: FontWeight.w900),
          ),
          SizedBox(height: 15.h),
          Text(
            description,
            style: labelMedium(
              context,
              color: context.theme.hintColor,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
