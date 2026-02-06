import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:templates/utils/colors.dart';

class OnboardingIndicator extends StatelessWidget {
  final int currentIndex;
  final int length;

  const OnboardingIndicator({
    super.key,
    required this.currentIndex,
    required this.length,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 24.w, bottom: 8.h),
      child: Row(
        children: List.generate(
          length,
          (index) => Container(
            margin: EdgeInsets.only(right: 6.w),
            height: 8.h,
            width: 8.h,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: currentIndex == index ? secondaryColor : Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}
