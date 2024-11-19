import 'package:flutter/material.dart';
import 'package:pas1_mobile_11pplg1_20/widget/my_header.dart';
import 'package:pas1_mobile_11pplg1_20/widget/my_profile.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const ProfileHeader(
              name: 'etmin',
              email: 'etmin@gmail.com',
            ),
            const SizedBox(height: 20),
            const ProfileItem(
              icon: Icons.person,
              title: 'Name',
              value: 'etmin',
            ),
            const ProfileItem(
              icon: Icons.cake,
              title: 'Birthday',
              value: '01 January 2000',
            ),
            const ProfileItem(
              icon: Icons.phone,
              title: 'Phone',
              value: '818 123 4567',
            ),
            const ProfileItem(
              icon: Icons.email,
              title: 'Email',
              value: 'etmin@gmail.com',
            ),
            const ProfileItem(
              icon: Icons.lock,
              title: 'Password',
              value: '********',
              isPassword: true,
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.of(context).pushReplacementNamed('/login');
              },
              icon: const Icon(Icons.logout, color: Colors.white),
              label: const Text(
                'Logout',
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
