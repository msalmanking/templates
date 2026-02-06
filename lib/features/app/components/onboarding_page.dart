import 'package:flutter/material.dart';
import 'package:templates/utils/images.dart';

class OnboardingPageView extends StatelessWidget {
  final PageController controller;
  final ValueChanged<int> onPageChanged;

  const OnboardingPageView({
    super.key,
    required this.controller,
    required this.onPageChanged,
  });

  static final List<String> _onboardImages = [
    Images.logo,
    Images.logo2,
    Images.logo3,
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: PageView.builder(
        controller: controller,
        itemCount: _onboardImages.length,
        onPageChanged: onPageChanged,
        itemBuilder: (context, index) {
          return _OnboardImage(image: _onboardImages[index]);
        },
      ),
    );
  }
}

class _OnboardImage extends StatelessWidget {
  final String image;

  const _OnboardImage({required this.image});

  @override
  Widget build(BuildContext context) {
    return Image.asset(image, fit: BoxFit.cover);
  }
}
