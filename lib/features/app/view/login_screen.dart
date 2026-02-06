import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:templates/utils/colors.dart';
import 'package:templates/utils/images.dart';
import 'package:templates/utils/style.dart';
import 'package:templates/widgets/primary_button.dart';
import 'package:templates/widgets/textfield.dart';
import 'package:templates/widgets/social_button.dart';
import 'package:templates/helper/navigation_helper.dart';
import 'package:templates/features/app/view/signup_screen.dart';
import 'package:templates/utils/app_dimensions.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.primaryColor,
      resizeToAvoidBottomInset: true,
      body: Column(
        children: [
          SizedBox(
            height: 270.h,

            child: Image.asset(Images.welcome, fit: BoxFit.cover),
          ),

          Expanded(
            child: SingleChildScrollView(
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 34.h),

                  Text(
                    'Welcome!',
                    style: headlineMedium(context, fontWeight: FontWeight.w900),
                  ),

                  SizedBox(height: 24.h),

                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Email Address',

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

                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Password',
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
                    ),
                  ),

                  SizedBox(height: 12.h),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Forgot password?',
                      style: labelLarge(
                        context,
                        color: context.theme.primaryColorDark,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),

                  SizedBox(height: 30.h),

                  PrimaryButton(
                    text: 'Login',
                    onPressed: () =>
                        launchScreen(context, const SignupScreen()),
                  ),

                  SizedBox(height: 16.h),

                  Center(
                    child: Text(
                      'Not a member? Register now',
                      style: labelLarge(
                        context,
                        color: context.theme.hintColor,
                      ),
                    ),
                  ),

                  SizedBox(height: 40.h),

                  Center(
                    child: Text(
                      'Or continue with',
                      style: labelLarge(
                        context,
                        color: context.theme.hintColor,
                      ),
                    ),
                  ),

                  SizedBox(height: 16.h),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SocialButton(asset: Images.google, bgColor: iconbg),
                      SizedBox(width: 16.w),
                      SocialButton(
                        asset: Images.apple,
                        bgColor: context.theme.scaffoldBackgroundColor,
                      ),
                      SizedBox(width: 16.w),
                      SocialButton(
                        asset: Images.facebook,
                        bgColor: context.theme.primaryColorDark,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
