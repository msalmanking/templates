import 'package:get/get.dart';
import 'package:templates/features/auth/data/services/auth_service.dart';

class AuthRepository {
  final ApiClient apiClient;

  AuthRepository({required this.apiClient});

  Future<Response> login(String email, String password) {
    return apiClient.post('/admin/login', {
      "email": email,
      "password": password,
    });
  }
}
