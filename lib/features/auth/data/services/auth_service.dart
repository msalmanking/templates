import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ApiClient extends GetConnect {
  @override
  void onInit() {
    httpClient.baseUrl = 'https://bc-api-test.bluescarf.ai';
    httpClient.addRequestModifier<dynamic>((request) {
      final box = GetStorage();
      String? token = box.read('access_token');
      if (token != null) {
        request.headers['Authorization'] = 'Bearer $token';
      }
      return request;
    });
    super.onInit();
  }
}
