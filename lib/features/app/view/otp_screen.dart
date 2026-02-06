import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:templates/utils/style.dart';
import 'package:templates/widgets/primary_button.dart';
import 'package:templates/features/app/view/subscription_screen.dart';
import 'package:templates/helper/navigation_helper.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.primaryColor,

      appBar: AppBar(backgroundColor: context.theme.primaryColor),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 40.h),

            Text(
              'Enter confirmation code',
              style: titleLarge(context, fontWeight: FontWeight.w800),
            ),

            SizedBox(height: 8.h),

            Text(
              'A 4-digit code was sent to lucasscott3@email.com',
              textAlign: TextAlign.center,
              style: TextStyle(color: context.theme.hintColor),
            ),

            SizedBox(height: 32.h),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                4,
                (index) => Padding(
                  padding: EdgeInsets.symmetric(horizontal: 6.w),

                  child: SizedBox(
                    width: 50.w,
                    height: 50.h,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      maxLength: 1,
                      decoration: InputDecoration(
                        counterText: '',
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.r),
                          borderSide: BorderSide(
                            color: context.theme.hintColor,
                            width: 1,
                          ),
                        ),

                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.r),
                          borderSide: BorderSide(
                            color: context.theme.primaryColorDark,
                            width: 2,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 100.h),

            Text(
              'Resend code',
              style: labelLarge(
                context,
                color: context.theme.primaryColorDark,
                fontWeight: FontWeight.w800,
              ),
            ),

            SizedBox(height: 30.h),

            PrimaryButton(
              text: 'Continue',
              onPressed: () =>
                  launchScreen(context, const SubscriptionScreen()),
            ),
          ],
        ),
      ),
    );
  }
}
