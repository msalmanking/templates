import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SocialButton extends StatelessWidget {
  final String asset;
  final Color bgColor;

  const SocialButton({super.key, required this.asset, required this.bgColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 55.w,
      height: 55.h,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(30.r),
      ),
      child: Padding(padding: EdgeInsets.all(14.w), child: Image.asset(asset)),
    );
  }
}
