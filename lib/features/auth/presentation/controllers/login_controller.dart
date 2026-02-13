import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:templates/features/auth/presentation/view/Subscription_screen.dart';
import 'package:templates/features/auth/data/models/user_model.dart';
import 'package:templates/features/auth/data/repository/auth_repositrory.dart';

class LoginController extends GetxController {
  final AuthRepository authRepo;
  LoginController({required this.authRepo});
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  var isLoading = false.obs;

  Future<void> login() async {
    if (emailController.text.isEmpty || passwordController.text.isEmpty) {
      Get.snackbar(
        "Error",
        "Fields cannot be empty",
        backgroundColor: Colors.red,
      );
      return;
    }

    try {
      isLoading.value = true;
      final response = await authRepo.login(
        emailController.text.trim(),
        passwordController.text.trim(),
      );

      if (response.statusCode == 200 && response.body['success'] == true) {
        UserModel user = UserModel.fromJson(response.body);

        final box = GetStorage();
        await box.write('access_token', user.token);
        await box.write('user_name', user.name);

        Get.offAll(() => const SubscriptionScreen());
      } else {
        String errorMsg = response.body['message'] ?? "Login Failed";
        Get.snackbar("Login Error", errorMsg, backgroundColor: Colors.orange);
      }
    } catch (e) {
      Get.snackbar("Fatal Error", e.toString(), backgroundColor: Colors.red);
    } finally {
      isLoading.value = false;
    }
  }
}
