import 'package:efaturamobileapp/constants.dart';
import 'package:efaturamobileapp/drawer_bar.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kAppBarColor,
        title: const Text(
          'Profil',
        ),
      ),
      body: const Center(),
    );
  }
}
