import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:templates/core/constants/app_dimensions.dart';

import 'package:templates/core/utils/style.dart';
import 'package:templates/core/widgets/primary_button.dart';
import 'package:templates/features/auth/presentation/view/subscription_screen.dart';
import 'package:templates/core/helper/navigation_helper.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 40.sp),

              Text(
                'Enter confirmation code',
                style: titleLarge(context, fontWeight: FontWeight.w800),
              ),

              SizedBox(height: 8.sp),

              Text(
                'A 4-digit code was sent to lucasscott3@email.com',
                textAlign: TextAlign.center,
                style: TextStyle(color: context.theme.hintColor),
              ),

              SizedBox(height: 32.sp),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  4,
                  (index) => Padding(
                    padding: EdgeInsets.symmetric(horizontal: 6.sp),

                    child: SizedBox(
                      width: 50.sp,
                      height: 50.sp,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        maxLength: 1,
                        decoration: InputDecoration(
                          counterText: '',
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                              AppDimensions.radiusMedium.sp,
                            ),
                            borderSide: BorderSide(
                              color: context.theme.hintColor,
                              width: 1.sp,
                            ),
                          ),

                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                              AppDimensions.radiusMedium.sp,
                            ),
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

              SizedBox(height: 100.sp),

              Text(
                'Resend code',
                style: labelLarge(
                  context,
                  color: context.theme.primaryColorDark,
                  fontWeight: FontWeight.w800,
                ),
              ),

              SizedBox(height: 30.sp),

              PrimaryButton(
                text: 'Continue',
                onPressed: () =>
                    launchScreen(context, const SubscriptionScreen()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
