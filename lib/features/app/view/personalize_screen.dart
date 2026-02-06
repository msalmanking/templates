import 'package:flutter/material.dart';
import 'package:templates/features/app/view/login_screen.dart';
import 'package:templates/utils/style.dart';
import 'package:templates/widgets/primary_button.dart';
import 'package:templates/helper/navigation_helper.dart';
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
      backgroundColor: context.theme.primaryColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: context.theme.primaryColor,
        leading: BackButton(color: context.theme.secondaryHeaderColor),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Personalise your experience",
              style: headlineMedium(context, fontWeight: FontWeight.w900),
            ),
            SizedBox(height: 8.h),
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
              onPressed: () => launchScreen(context, const LoginScreen()),
            ),
          ],
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
        margin: EdgeInsets.only(bottom: 10.h),
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
        decoration: BoxDecoration(
          color: isSelected ? Color(0xffEAF2FF) : context.theme.primaryColor,
          border: Border.all(
            color: isSelected
                ? context.theme.primaryColor
                : context.theme.hintColor,
            width: 1.w,
          ),
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: TextStyle(
                color: isSelected
                    ? context.theme.scaffoldBackgroundColor
                    : context.theme.scaffoldBackgroundColor,
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
