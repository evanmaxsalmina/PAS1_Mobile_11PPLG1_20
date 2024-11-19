import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas1_mobile_11pplg1_20/pages/home_page.dart';
import 'package:pas1_mobile_11pplg1_20/pages/login_page.dart';
import 'package:pas1_mobile_11pplg1_20/pages/views/detail_page.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/login',
      getPages: [
        GetPage(name: '/login', page: () => LoginPage()),
        GetPage(name: '/home', page: () => HomePage()),
        GetPage(name: '/detail', page: () => DetailPage()),
      ],
    );
  }
}
