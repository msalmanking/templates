import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:templates/core/utils/style.dart';
import 'package:templates/features/setting/data/models/chat_model.dart';
import 'chat_details_screen.dart';

class ChatsScreen extends StatelessWidget {
  const ChatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.primaryColor,

      appBar: AppBar(
        backgroundColor: context.theme.primaryColor,
        centerTitle: true,

        leading: Padding(
          padding: EdgeInsets.only(left: 26.0, top: 20.0),

          child: Text(
            'Edit',
            style: labelLarge(
              context,
              color: context.theme.primaryColorDark,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        title: Text(
          'Chats',
          style: titleLarge(context, fontWeight: FontWeight.w600),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.edit, color: context.theme.primaryColorDark),
            onPressed: () {},
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
              child: Container(
                height: 50.h,
                padding: EdgeInsets.symmetric(horizontal: 12.w),
                decoration: BoxDecoration(
                  color: context.theme.highlightColor.withOpacity(0.14),
                  borderRadius: BorderRadius.circular(30.r),
                ),
                child: Row(
                  children: [
                    Icon(Icons.search, size: 20.sp),
                    SizedBox(width: 10.w),
                    Text(
                      'Search',
                      style: labelLarge(
                        context,
                        color: context.theme.hintColor,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Expanded(
              child: ListView.separated(
                itemCount: chatList.length,
                separatorBuilder: (_, __) => Divider(height: 1),
                itemBuilder: (context, index) {
                  final chat = chatList[index];

                  return ListTile(
                    leading: CircleAvatar(
                      radius: 24.r,
                      backgroundColor: context.theme.primaryColorLight
                          .withOpacity(0.4),
                      child: Icon(
                        Icons.person,
                        color: context.theme.primaryColorDark,
                      ),
                    ),

                    title: Text(
                      chat.name,
                      style: titleMedium(context, fontWeight: FontWeight.w600),
                    ),

                    subtitle: Text(
                      chat.message,
                      maxLines: 1,
                      style: labelMedium(
                        context,
                        color: context.theme.hintColor,
                      ),
                    ),

                    trailing: chat.unread > 0
                        ? CircleAvatar(
                            radius: 12.r,
                            backgroundColor: context.theme.primaryColorDark,
                            child: Text(
                              chat.unread.toString(),
                              style: labelMedium(
                                context,
                                color: context.theme.primaryColor,

                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          )
                        : null,

                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => ChatDetailScreen(name: chat.name),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
