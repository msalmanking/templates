import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:templates/core/utils/style.dart';

class ChatDetailScreen extends StatelessWidget {
  final String name;

  const ChatDetailScreen({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.primaryColor,

      appBar: AppBar(
        backgroundColor: context.theme.primaryColor,
        title: Text(
          name,
          style: titleMedium(context, fontWeight: FontWeight.w600),
        ),
      ),

      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(16.w),
              children: [
                _receivedMessage(context, 'Hey Salman!'),
                _sentMessage(context, 'Hi Sohail!'),
                _receivedMessage(context, 'How’s your project going?'),
                _sentMessage(context, 'It’s going well. Thanks for asking!'),
              ],
            ),
          ),

          _messageInput(context),
        ],
      ),
    );
  }

  Widget _receivedMessage(BuildContext context, String text) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        margin: EdgeInsets.only(bottom: 10.h),
        padding: EdgeInsets.all(12.w),
        decoration: BoxDecoration(
          color: context.theme.highlightColor,
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: Text(text),
      ),
    );
  }

  Widget _sentMessage(BuildContext context, String text) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        margin: EdgeInsets.only(bottom: 10.h),
        padding: EdgeInsets.all(12.w),
        decoration: BoxDecoration(
          color: context.theme.primaryColorDark,
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: Text(text, style: TextStyle(color: context.theme.primaryColor)),
      ),
    );
  }

  Widget _messageInput(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15.w),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Type a message...',
                filled: true,
                fillColor: context.theme.focusColor,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.r),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          SizedBox(width: 8.w),
          CircleAvatar(
            backgroundColor: context.theme.primaryColorDark,
            radius: 22.r,
            child: Icon(Icons.send, color: context.theme.primaryColor),
          ),
        ],
      ),
    );
  }
}
