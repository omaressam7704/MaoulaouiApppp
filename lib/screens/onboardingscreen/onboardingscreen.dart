import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maoulaoui/screens/loginscreen/loginscreen.dart';
import 'package:maoulaoui/shared/resources/asset_manager.dart';

class OnboardingScreen extends StatefulWidget {
  static const String route = '/onboarding';

  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();
  int _currentPage = 0;

  final List<_OnboardingData> _pages = [
    _OnboardingData(
      image: AppAssets.onboarding1,
      title: 'اختار القاعة المثالية لليلتك الكبيرة',
      description: 'سواء خطوبة، فرح أو أي مناسبة احجزها بسهولة من موبايلك!',
    ),
    _OnboardingData(
      image: AppAssets.onboarding2,
      title: 'أفضل الفرق الموسيقية',
      description: 'اكتشف أفضل الفرق الموسيقية لإحياء مناسبتك.',
    ),
    _OnboardingData(
      image: AppAssets.onboarding3,
      title: 'خدمات متكاملة',
      description: 'كل ما تحتاجه في مكان واحد، من الإضاءة إلى التصوير.',
    ),
  ];

  void _nextPage() {
    if (_currentPage < _pages.length - 1) {
      _controller.nextPage(
        duration: const Duration(milliseconds: 400),
        curve: Curves.ease,
      );
    }
  }

  void _skip() {
    Navigator.of(context).pushReplacementNamed(Loginscreen.route);
  }

  /* void _prevPage() {
    if (_currentPage > 0) {
      _controller.previousPage(
        duration: const Duration(milliseconds: 400),
        curve: Curves.ease,
      );
    }
  } */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: PageView.builder(
        controller: _controller,
        itemCount: _pages.length,
        onPageChanged: (index) => setState(() => _currentPage = index),
        itemBuilder: (context, index) {
          final data = _pages[index];
          return Stack(
            fit: StackFit.expand,
            children: [
              // Background image
              Image.asset(data.image, fit: BoxFit.cover),
              // Blurred overlay card
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(
                    bottom: 48.h,
                    left: 16.w,
                    right: 16.w,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(24.r),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 16, sigmaY: 16),
                      child: Container(
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(
                          vertical: 24.h,
                          horizontal: 20.w,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.25),
                          borderRadius: BorderRadius.circular(24.r),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              data.title,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22.sp,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Tajawal',
                              ),
                            ),
                            SizedBox(height: 12.h),
                            Text(
                              data.description,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14.sp,
                                fontFamily: 'Tajawal',
                              ),
                            ),
                            SizedBox(height: 24.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                // Back arrow
                                IconButton(
                                  onPressed: _currentPage == 2
                                      ? _skip
                                      : _nextPage,
                                  icon: Icon(
                                    Icons.arrow_back_ios_new_rounded,
                                    color: Colors.amber,
                                    size: 28.sp,
                                  ),
                                ),
                                // Page indicator
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children:
                                      List.generate(
                                            _pages.length,
                                            (dotIndex) => Container(
                                              margin: EdgeInsets.symmetric(
                                                horizontal: 3.w,
                                              ),
                                              width: 8.w,
                                              height: 8.w,
                                              decoration: BoxDecoration(
                                                color: dotIndex == _currentPage
                                                    ? Colors.amber
                                                    : Colors.white.withOpacity(
                                                        0.5,
                                                      ),
                                                shape: BoxShape.circle,
                                              ),
                                            ),
                                          ).reversed
                                          .toList(), // This reverses the order for RTL
                                ),
                                // Skip
                                TextButton(
                                  onPressed: () {
                                    _skip();
                                  },
                                  child: Text(
                                    'تخطي',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16.sp,
                                      fontFamily: 'Tajawal',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class _OnboardingData {
  final String image;
  final String title;
  final String description;
  const _OnboardingData({
    required this.image,
    required this.title,
    required this.description,
  });
}
