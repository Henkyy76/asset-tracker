import 'package:flutter/material.dart';
import '../core/constants/app_colors.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        title: const Text('Profil Pengguna', style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'Nama Pengguna: Admin\nRole: Supervisor Aset',
          textAlign: TextAlign.center,
          style: TextStyle(color: AppColors.textDark, fontSize: 16),
        ),
      ),
    );
  }
}
