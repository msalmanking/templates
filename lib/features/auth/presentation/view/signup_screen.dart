import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:templates/core/utils/style.dart';
import 'package:templates/core/widgets/primary_button.dart';
import 'package:templates/core/helper/navigation_helper.dart';
import 'package:templates/features/auth/presentation/view//otp_screen.dart';
import 'package:templates/core/widgets/textfield.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,

      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24.sp),
          physics: const BouncingScrollPhysics(),
          children: [
            SizedBox(height: 20.sp),
            Text(
              'Sign up',
              style: headlineSmall(context, fontWeight: FontWeight.w900),
            ),
            SizedBox(height: 6.sp),
            Text(
              'Create an account to get started',
              style: labelLarge(
                context,
                color: Theme.of(context).hintColor,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 32.sp),

            _buildLabel(context, 'Name'),
            const CustomTextField(hintText: "Name"),

            SizedBox(height: 16.sp),
            _buildLabel(context, 'Email Address'),
            const CustomTextField(hintText: 'name@email.com'),

            SizedBox(height: 16.sp),
            _buildLabel(context, 'Password'),
            const CustomTextField(
              hintText: 'Create a password',
              obscureText: true,
              suffixIcon: Icons.visibility_off_sharp,
            ),

            SizedBox(height: 16.sp),
            _buildLabel(context, 'Confirm Password'),
            const CustomTextField(
              hintText: 'Confirm password',
              obscureText: true,
              suffixIcon: Icons.visibility_off_sharp,
            ),

            SizedBox(height: 16.sp),

            Row(
              children: [
                Checkbox(value: false, onChanged: (_) {}),
                Expanded(
                  child: Text(
                    'I have read and agree with the Terms and Conditions and the Privacy Policy.',
                    style: titleSmall(
                      context,
                      color: Theme.of(context).hintColor,
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 40.sp),

            PrimaryButton(
              text: 'Continue',
              onPressed: () => launchScreen(context, const OtpScreen()),
            ),

            SizedBox(height: 24.sp),
          ],
        ),
      ),
    );
  }

  Widget _buildLabel(BuildContext context, String text) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8.sp),
      child: Text(
        text,
        style: labelLarge(context, fontWeight: FontWeight.w700),
      ),
    );
  }
}
