import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:templates/core/constants/app_dimensions.dart';

import 'package:templates/core/utils/style.dart';
import 'package:templates/core/widgets/primary_button.dart';
import 'package:templates/features/setting/presentation/view/setting_screen.dart';
import 'package:templates/core/helper/navigation_helper.dart';

class SubscriptionScreen extends StatefulWidget {
  const SubscriptionScreen({super.key});

  @override
  State<SubscriptionScreen> createState() => _SubscriptionScreenState();
}

class _SubscriptionScreenState extends State<SubscriptionScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(),
                  IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () =>
                        launchScreen(context, const SettingScreen()),
                  ),
                ],
              ),

              SizedBox(height: 12.sp),

              Text(
                'Choose your subscription plan',
                style: headlineMedium(context, fontWeight: FontWeight.w900),
              ),

              SizedBox(height: 10.sp),

              Text(
                'And get a 7-day free trial',
                style: bodyLarge(context, color: context.theme.hintColor),
              ),

              SizedBox(height: 24.sp),

              _planTile(
                index: 0,
                title: 'Yearly',
                price: '€ 94.80',
                subtitle: 'every year',
                discount: '-66% discount',
              ),

              _planTile(
                index: 1,
                title: 'Monthly',
                price: '€ 10.90',
                subtitle: 'every month',
                discount: '-53% discount',
              ),

              _planTile(
                index: 2,
                title: 'Weekly',
                price: '€ 5.90',
                subtitle: 'every week',
              ),

              SizedBox(height: 24.sp),

              _benefitsSection(),

              const Spacer(),

              PrimaryButton(text: 'Subscribe', onPressed: () {}),

              SizedBox(height: 16.sp),
            ],
          ),
        ),
      ),
    );
  }

  Widget _planTile({
    required int index,
    required String title,
    required String price,
    required String subtitle,
    String? discount,
  }) {
    final isSelected = selectedIndex == index;
    return GestureDetector(
      onTap: () => setState(() => selectedIndex = index),
      child: Container(
        margin: EdgeInsets.only(bottom: 12.sp),
        padding: EdgeInsets.all(16.sp),
        decoration: BoxDecoration(
          color: isSelected
              ? context.theme.primaryColorLight
              : context.theme.primaryColor,

          borderRadius: BorderRadius.circular(AppDimensions.radiusLarge.sp),
          border: Border.all(
            color: isSelected
                ? context.theme.primaryColorLight
                : context.theme.disabledColor,
          ),
        ),
        child: Row(
          children: [
            Icon(
              isSelected ? Icons.radio_button_checked : Icons.radio_button_off,
              color: context.theme.primaryColorDark,
            ),
            SizedBox(width: 12.sp),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: titleMedium(context, fontWeight: FontWeight.w700),
                  ),
                  if (discount != null)
                    Text(
                      discount,
                      style: labelMedium(
                        context,
                        color: context.theme.primaryColorDark,
                      ),
                    ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  price,
                  style: titleMedium(context, fontWeight: FontWeight.w700),
                ),
                Text(
                  subtitle,
                  style: bodySmall(context, color: context.theme.hintColor),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _benefitsSection() {
    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(AppDimensions.radiusMedium.sp),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "You'll get:",
            style: titleMedium(context, fontWeight: FontWeight.w700),
          ),
          SizedBox(height: 12.h),
          _benefitItem('Unlimited access'),
          _benefitItem('200GB storage'),
          _benefitItem('Sync all your devices'),
        ],
      ),
    );
  }

  Widget _benefitItem(String text) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8.sp),
      child: Row(
        children: [
          const Icon(Icons.star, color: Colors.blue, size: 18),
          SizedBox(width: 8.sp),
          Text(text, style: TextStyle(fontSize: 14.sp)),
        ],
      ),
    );
  }
}
