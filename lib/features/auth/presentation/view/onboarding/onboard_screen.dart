import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:templates/features/auth/presentation/widgets/onboarding_button.dart';
import 'package:templates/features/auth/presentation/widgets/onboarding_page.dart';
import 'package:templates/features/auth/presentation//widgets/onboarding_text.dart';
import 'package:templates/features/auth/presentation/view/personalize_screen.dart';
import 'package:templates/features/auth/presentation/view/onboarding/onboarding_data.dart';
import 'package:templates/features/auth/presentation/widgets/onboarding_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();
  int _currentIndex = 0;

  void _nextPage() {
    if (_currentIndex < onboardingData.length - 1) {
      _controller.nextPage(
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOut,
      );
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const PersonalizeScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: OnboardingPageView(
                controller: _controller,
                onPageChanged: (index) {
                  setState(() => _currentIndex = index);
                },
              ),
            ),

            SizedBox(height: 24.h),

            OnboardingIndicator(
              currentIndex: _currentIndex,
              length: onboardingData.length,
            ),

            SizedBox(height: 10.h),

            OnboardingText(
              title: onboardingData[_currentIndex]["title"]!,
              description: onboardingData[_currentIndex]["desc"]!,
            ),

            SizedBox(height: 30.h),

            PrimaryButton(onPressed: _nextPage),
          ],
        ),
      ),
    );
  }
}
