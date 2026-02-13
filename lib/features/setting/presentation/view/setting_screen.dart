import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:templates/core/utils/style.dart';
import 'chats_screen.dart';
import 'friends_screen.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  int _currentIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.primaryColor,
      body: _buildBody(),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: context.theme.primaryColor,
        currentIndex: _currentIndex,
        selectedItemColor: context.theme.primaryColorDark,
        unselectedItemColor: context.theme.disabledColor,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
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

  Widget _buildBody() {
    switch (_currentIndex) {
      case 0:
        return const ChatsScreen();
      case 1:
        return const FriendsScreen();
      default:
        return _settingsBody();
    }
  }

  Widget _settingsBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            SizedBox(height: 60.h),

            Text(
              'Settings',
              style: titleLarge(context, fontWeight: FontWeight.w600),
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
    );
  }

  Widget _settingTile(String title) {
    return Column(
      children: [
        ListTile(
          contentPadding: EdgeInsets.zero,
          title: Text(title, style: TextStyle(fontSize: 15.sp)),
          trailing: const Icon(Icons.chevron_right),
        ),
        const Divider(height: 1),
      ],
    );
  }
}
