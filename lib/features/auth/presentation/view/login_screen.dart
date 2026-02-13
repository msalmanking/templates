import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:templates/core/constants/colors.dart';
import 'package:templates/core/constants/images.dart';
import 'package:templates/core/utils/style.dart';
import 'package:templates/core/widgets/primary_button.dart';
import 'package:templates/core/widgets/social_button.dart';
import 'package:templates/core/widgets/textfield.dart';
import 'package:get/get.dart';
import 'package:templates/features/auth/presentation/controllers/login_controller.dart';
import 'package:templates/features/auth/data/repository/auth_repositrory.dart';

import 'package:templates/features/auth/data/services/auth_service.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final LoginController authController = Get.put(
    LoginController(authRepo: AuthRepository(apiClient: Get.find<ApiClient>())),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Obx(
          () => Stack(
            children: [
              ListView(
                padding: EdgeInsets.zero,
                children: [
                  SizedBox(
                    height: 220.sp,
                    width: double.infinity,
                    child: Image.asset(Images.welcome),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.sp),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 34.h),
                        Text(
                          'Welcome!',
                          style: headlineMedium(
                            context,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        SizedBox(height: 24.sp),
                        CustomTextField(
                          hintText: "Email Address",
                          controller: authController.emailController,
                        ),
                        SizedBox(height: 16.sp),
                        CustomTextField(
                          hintText: "Password",
                          obscureText: true,
                          suffixIcon: Icons.visibility_off,
                          controller: authController.passwordController,
                        ),
                        SizedBox(height: 12.sp),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: GestureDetector(
                            onTap: () {},
                            child: Text(
                              'Forgot password?',
                              style: labelLarge(
                                context,
                                color: Theme.of(context).primaryColorDark,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 30.sp),
                        PrimaryButton(
                          text: 'Login',
                          onPressed: authController.login,
                        ),

                        SizedBox(height: 16.sp),
                        Center(
                          child: Text(
                            'Not a member? Register now',
                            style: labelLarge(
                              context,
                              color: Theme.of(context).hintColor,
                            ),
                          ),
                        ),
                        SizedBox(height: 40.sp),
                        Center(
                          child: Text(
                            'Or continue with',
                            style: labelLarge(
                              context,
                              color: Theme.of(context).hintColor,
                            ),
                          ),
                        ),
                        SizedBox(height: 16.sp),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SocialButton(asset: Images.google, bgColor: iconbg),
                            SizedBox(width: 16.sp),
                            SocialButton(
                              asset: Images.apple,
                              bgColor: Theme.of(context).colorScheme.onSurface,
                            ),
                            SizedBox(width: 16.sp),
                            SocialButton(
                              asset: Images.facebook,
                              bgColor: Theme.of(context).primaryColorDark,
                            ),
                          ],
                        ),
                        SizedBox(height: 24.sp),
                      ],
                    ),
                  ),
                ],
              ),
              // Loading overlay
              if (authController.isLoading.value)
                Container(
                  color: Colors.black.withOpacity(0.5),
                  child: const Center(child: CircularProgressIndicator()),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
