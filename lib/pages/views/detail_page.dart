import 'package:flutter/material.dart';
import 'package:pas1_mobile_11pplg1_20/widget/my_header.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ProfileHeader(
              name: 'detail',
              email: 'detail',
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
