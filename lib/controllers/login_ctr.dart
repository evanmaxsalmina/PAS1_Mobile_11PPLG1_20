import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:pas1_mobile_11pplg1_20/model/login_model.dart';
import 'package:pas1_mobile_11pplg1_20/service/login_service.dart';

class LoginController extends GetxController {
  var isLoading = false.obs;
  var loginStatus = ''.obs;
  var token = ''.obs;
  var loginResponse =
      LoginResponse(success: false, message: '', token: null).obs;

  final LoginService _apiService = LoginService();

  Future<void> login(String username, String password) async {
    if (username.isEmpty || password.isEmpty) {
      print("Error: Email atau Password tidak boleh kosong");
      return;
    }

    print("Mengirim Data: Email = $username, Password = $password");

    isLoading.value = true;
    final response = await _apiService.login(username, password);
    isLoading.value = false;

    if (response != null) {
      print("Respons API: $response");
      loginResponse.value = LoginResponse(
        success: response['status'],
        message: response['message'],
        token: response['token'],
      );
      Get.offAllNamed('/home');
    } else {
      
      Get.snackbar(
          snackPosition: SnackPosition.TOP,
          duration: 2.seconds,
          backgroundColor: const Color(0xff156651),
          colorText: Colors.white,
          'Error',
          response?['message'] ?? 'Login gagal.',
        );
      print("Respons API gagal: Tidak ada respons dari server");
    }
  }
}
