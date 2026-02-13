import 'package:flutter/material.dart';
import 'package:templates/core/utils/style.dart';

class FriendsScreen extends StatelessWidget {
  const FriendsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.primaryColor,
      appBar: AppBar(
        backgroundColor: context.theme.primaryColor,
        title: const Text('Friends'),
      ),
      body: Center(child: Text('Friends Screen')),
    );
  }
}
