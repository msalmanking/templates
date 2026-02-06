import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:templates/utils/style.dart';
import 'package:templates/widgets/primary_button.dart';
import 'package:templates/widgets/textfield.dart';

import 'package:templates/helper/navigation_helper.dart';
import 'package:templates/features/app/view/otp_screen.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.primaryColor,
      resizeToAvoidBottomInset: true,
      appBar: AppBar(backgroundColor: context.theme.primaryColor),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Sign up',
              style: headlineSmall(context, fontWeight: FontWeight.w900),
            ),

            SizedBox(height: 6.h),

            Text(
              'Create an account to get started',
              style: labelLarge(
                context,
                color: context.theme.hintColor,
                fontWeight: FontWeight.w400,
              ),
            ),

            SizedBox(height: 24.h),

            Expanded(
              child: SingleChildScrollView(
                keyboardDismissBehavior:
                    ScrollViewKeyboardDismissBehavior.onDrag,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Name',
                      style: labelLarge(context, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(height: 8.h),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Enter your name',
                        hintStyle: TextStyle(color: context.theme.hintColor),

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

                    SizedBox(height: 16.h),

                    Text(
                      'Email Address',
                      style: labelLarge(context, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(height: 8.h),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'name@email.com',
                        hintStyle: TextStyle(color: context.theme.hintColor),

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

                    SizedBox(height: 16.h),

                    Text(
                      'Password',
                      style: labelLarge(context, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(height: 8.h),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Create a password',
                        hintStyle: TextStyle(color: context.theme.hintColor),

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

                        suffixIcon: Icon(Icons.visibility_off),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                      ),
                    ),

                    SizedBox(height: 16.h),

                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Confirm password',
                        hintStyle: TextStyle(color: context.theme.hintColor),
                        suffixIcon: Icon(Icons.visibility_off),
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

                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                      ),
                    ),

                    SizedBox(height: 16.h),

                    Row(
                      children: [
                        Checkbox(value: false, onChanged: (_) {}),
                        Expanded(
                          child: Text(
                            'I have read and agree with the Terms and Conditions and the Privacy Policy.',

                            style: titleSmall(
                              context,
                              color: context.theme.hintColor,
                            ),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 60.h),

                    PrimaryButton(
                      text: 'Continue',
                      onPressed: () => launchScreen(context, const OtpScreen()),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
