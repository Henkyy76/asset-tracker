import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppStyles {
  // Judul besar
  static const TextStyle headline1 = TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.bold,
    color: AppColors.textDark,
  );

  // Subjudul
  static const TextStyle headline2 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: AppColors.textDark,
  );

  // Deskripsi
  static const TextStyle body = TextStyle(
    fontSize: 16,
    color: AppColors.textLight,
    height: 1.5,
  );

  // Teks tombol
  static const TextStyle button = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: Colors.white,
    letterSpacing: 0.8,
  );
}
