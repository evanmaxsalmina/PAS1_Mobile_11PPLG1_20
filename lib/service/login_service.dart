import 'package:get/get.dart';

class LoginService extends GetxService {
  final _baseUrl = 'https://mediadwi.com/api/latihan';

  Future<Map<String, dynamic>?> login(String username, String password) async {
    final response = await GetConnect().post(
      '$_baseUrl/login',
      {'username': username, 'password': password},
    );

    if (response.status.hasError) {
      print('Error: ${response.statusText}');
      return null;
    }

    return response.body; 
  }
}
