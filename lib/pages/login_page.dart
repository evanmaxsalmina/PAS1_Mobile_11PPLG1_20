import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas1_mobile_11pplg1_20/controllers/login_ctr.dart';
import 'package:pas1_mobile_11pplg1_20/widget/my_textfield.dart';

class LoginPage extends StatelessWidget {
  final LoginController controller = Get.put(LoginController());
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            const SizedBox(height: 40),
            TextFieldWidget(
              controller: usernameController,
              labelText: 'Username',
            ),
            const SizedBox(height: 20),
            TextFieldWidget(
              controller: passwordController,
              labelText: 'Password',
              obscureText: true,
            ),
            const SizedBox(height: 30),
            Obx(() {
              return controller.isLoading.value
                  ? Center(child: CircularProgressIndicator())
                  : ElevatedButton(
                      onPressed: () {
                        final username = usernameController.text.trim();
                        final password = passwordController.text.trim();
                        controller.login(username, password);
                      },
                      child: Text('Login'),
                    );
            }),
          ],
        ),
      ),
    );
  }
}
