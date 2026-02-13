import 'package:flutter/material.dart';
import 'package:templates/features/auth/presentation/view/login_screen.dart';
import 'package:templates/core/constants/app_dimensions.dart';
import 'package:templates/core/utils/style.dart';
import 'package:templates/core/widgets/primary_button.dart';
import 'package:templates/core/helper/navigation_helper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PersonalizeScreen extends StatefulWidget {
  const PersonalizeScreen({super.key});

  @override
  State<PersonalizeScreen> createState() => _PersonalizeScreenState();
}

class _PersonalizeScreenState extends State<PersonalizeScreen> {
  final Set<String> selectedItems = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Personalise your experience",
                style: headlineMedium(context, fontWeight: FontWeight.w900),
              ),
              SizedBox(height: 8.sp),
              Text(
                "Choose your interests",
                style: labelLarge(context, color: context.theme.hintColor),
              ),

              SizedBox(height: 24.h),

              _item("User Interface"),
              _item("User Experience"),
              _item("User Research"),
              _item("UX Writing"),
              _item("User Testing"),
              _item("Service Design"),
              _item("Strategy"),
              _item("Design Systems"),

              const Spacer(),

              PrimaryButton(
                text: "Next",
                onPressed: () => launchScreen(context, LoginScreen()),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _item(String text) {
    final bool isSelected = selectedItems.contains(text);

    return GestureDetector(
      onTap: () {
        setState(() {
          if (isSelected) {
            selectedItems.remove(text);
          } else {
            selectedItems.add(text);
          }
        });
      },
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.only(bottom: 10.sp),
        padding: EdgeInsets.symmetric(horizontal: 16.sp, vertical: 14.sp),
        decoration: BoxDecoration(
          color: isSelected ? Color(0xffEAF2FF) : context.theme.primaryColor,
          border: Border.all(
            color: isSelected
                ? context.theme.hintColor
                : context.theme.hintColor,
            width: 1.sp,
          ),
          borderRadius: BorderRadius.circular(AppDimensions.radiusMedium.sp),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: TextStyle(
                color: isSelected
                    ? context.theme.colorScheme.onSurface
                    : context.theme.colorScheme.onSurface,
              ),
            ),

            if (isSelected)
              Icon(
                Icons.check,
                color: context.theme.primaryColorDark,
                size: 15.sp,
              ),
          ],
        ),
      ),
    );
  }
}
