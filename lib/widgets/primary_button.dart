import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:templates/utils/colors.dart';

class PrimaryButton extends StatefulWidget {
  final VoidCallback onPressed;
  final String text;
  final Color? backgroundColor;
  final double? height;
  final double? radius;

  const PrimaryButton({
    super.key,
    required this.onPressed,
    this.text = 'Next',
    this.backgroundColor,
    this.height,
    this.radius,
  });

  @override
  State<PrimaryButton> createState() => _PrimaryButtonState();
}

class _PrimaryButtonState extends State<PrimaryButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: widget.height ?? 50.h,
      child: ElevatedButton(
        onPressed: widget.onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: widget.backgroundColor ?? secondaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(widget.radius ?? 12.r),
          ),
        ),
        child: Text(
          widget.text,
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
