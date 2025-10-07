import 'package:flutter/material.dart';
import '../core/constants/app_colors.dart';
import '../core/constants/app_styles.dart';
import '../routes/app_routes.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();
  int _pageIndex = 0;

  final List<Map<String, String>> onboardingData = [
    {
      "title": "Pantau Asetmu",
      "desc": "Lacak dan kelola semua aset perusahaan dengan mudah dan cepat.",
      "image": "https://cdn-icons-png.flaticon.com/512/4149/4149670.png",
    },
    {
      "title": "Scan & Simpan",
      "desc": "Gunakan QR untuk mencatat aset dan mempermudah audit data.",
      "image": "https://cdn-icons-png.flaticon.com/512/4149/4149680.png",
    },
    {
      "title": "Laporan Instan",
      "desc": "Dapatkan analisis dan laporan aset secara real-time.",
      "image": "https://cdn-icons-png.flaticon.com/512/4149/4149702.png",
    },
  ];

  void _nextPage() {
    if (_pageIndex < onboardingData.length - 1) {
      _controller.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.ease,
      );
    } else {
      Navigator.pushReplacementNamed(context, AppRoutes.home);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: _controller,
                onPageChanged: (index) => setState(() => _pageIndex = index),
                itemCount: onboardingData.length,
                itemBuilder: (context, index) {
                  final data = onboardingData[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 40),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.network(data["image"]!, height: 250),
                        const SizedBox(height: 40),
                        Text(
                          data["title"]!,
                          style: AppStyles.headline1,
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 16),
                        Text(
                          data["desc"]!,
                          style: AppStyles.body,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: List.generate(
                      onboardingData.length,
                      (index) => AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        margin: const EdgeInsets.only(right: 8),
                        height: 8,
                        width: _pageIndex == index ? 24 : 8,
                        decoration: BoxDecoration(
                          color: _pageIndex == index
                              ? AppColors.primary
                              : AppColors.border,
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primary,
                      padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    onPressed: _nextPage,
                    child: Text(
                      _pageIndex == onboardingData.length - 1 ? "Mulai" : "Lanjut",
                      style: AppStyles.button,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
