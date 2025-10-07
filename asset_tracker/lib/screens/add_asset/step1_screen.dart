// lib/screens/add_asset/step1_screen.dart
import 'package:flutter/material.dart';
import '../../core/constants/app_colors.dart';
import '../../core/constants/app_styles.dart';

class Step1Screen extends StatelessWidget {
  const Step1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        title: Text('Tambah Aset - Langkah 1', style: AppStyles.headline2),
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Informasi Dasar', style: AppStyles.headline2),
            const SizedBox(height: 16),

            // Nama Aset
            TextField(
              decoration: InputDecoration(
                labelText: 'Nama Aset',
                labelStyle: AppStyles.body,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(color: AppColors.border),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(color: AppColors.primary, width: 2),
                ),
              ),
            ),
            const SizedBox(height: 16),

            // Kode Aset
            TextField(
              decoration: InputDecoration(
                labelText: 'Kode Aset',
                labelStyle: AppStyles.body,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(color: AppColors.border),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(color: AppColors.primary, width: 2),
                ),
              ),
            ),
            const SizedBox(height: 16),

            // Lokasi Aset
            TextField(
              decoration: InputDecoration(
                labelText: 'Lokasi Aset',
                labelStyle: AppStyles.body,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(color: AppColors.border),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(color: AppColors.primary, width: 2),
                ),
              ),
            ),
            const SizedBox(height: 24),

            // Tombol Lanjut
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Nanti navigasi ke langkah 2
                  Navigator.pushNamed(context, AppRoutes.addAssetStep1);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary,
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Text('Lanjut ke Langkah 2', style: AppStyles.button),
              ),
            ),
          ],
        ),
      ),
    );
  }
}