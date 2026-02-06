import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:templates/utils/style.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.primaryColor,

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 60.h),
                child: Center(
                  child: Text(
                    'Settings',
                    style: titleLarge(context, fontWeight: FontWeight.w600),
                  ),
                ),
              ),

              SizedBox(height: 20.h),

              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  CircleAvatar(
                    radius: 50.r,

                    backgroundColor: context.theme.primaryColorLight,
                    child: Icon(
                      Icons.person,
                      size: 100.sp,
                      color: context.theme.primaryColorDark,
                    ),
                  ),
                  CircleAvatar(
                    radius: 14.r,
                    backgroundColor: context.theme.primaryColorDark,
                    child: Icon(
                      Icons.edit,
                      size: 15.sp,
                      color: context.theme.primaryColor,
                    ),
                  ),
                ],
              ),

              SizedBox(height: 12.h),

              Text(
                'Lucas Scott',
                style: titleLarge(context, fontWeight: FontWeight.w900),
              ),

              SizedBox(height: 3.h),

              Text(
                '@lucasscott3',
                style: labelLarge(context, color: context.theme.dividerColor),
              ),

              SizedBox(height: 24.h),

              _settingTile('Saved Messages'),
              _settingTile('Recent Calls'),
              _settingTile('Devices'),
              _settingTile('Notifications'),
              _settingTile('Appearance'),
              _settingTile('Language'),
              _settingTile('Privacy & Security'),
              _settingTile('Storage'),
            ],
          ),
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: context.theme.primaryColor,
        currentIndex: 2,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble),
            label: 'Chats',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Friends'),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }

  Widget _settingTile(String title) {
    return Column(
      children: [
        ListTile(
          contentPadding: EdgeInsets.zero,
          title: Text(title, style: TextStyle(fontSize: 15.sp)),
          trailing: Icon(Icons.chevron_right, color: Colors.black),
          onTap: () {},
        ),
        Divider(height: 1),
      ],
    );
  }
}
