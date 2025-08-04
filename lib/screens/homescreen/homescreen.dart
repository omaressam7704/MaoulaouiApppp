import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maoulaoui/screens/homescreen/widgets/categories.dart';
import 'package:maoulaoui/screens/homescreen/data/categoriesdata.dart';
import 'package:maoulaoui/screens/homescreen/widgets/offerscard.dart';
import 'package:maoulaoui/screens/homescreen/widgets/bookingscard.dart';
import 'package:maoulaoui/shared/resources/asset_manager.dart';

class Homescreen extends StatelessWidget {
  Homescreen({super.key});
  final imageUrl = [
    AppAssets.band,
    AppAssets.dj,
    AppAssets.elKa3at,
    AppAssets.light,
    AppAssets.light,
    AppAssets.light,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SafeArea(
          child: SizedBox(
            width: 0.9.sw,
            child: Row(
              children: [
                InkWell(
                  onTap: () {},
                  child: Image.asset(AppAssets.drawer, height: 40, width: 40),
                ),
                InkWell(
                  onTap: () {},
                  child: Image.asset(
                    AppAssets.notifications,
                    height: 40,
                    width: 40,
                  ),
                ),
                SizedBox(width: 0.65.sw),
                Image.asset(AppAssets.logo, height: 40, width: 40),
              ],
            ),
          ),
        ),
      ),
      body: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 0.8.sw,
                    child: TextFormField(
                      textAlign: TextAlign.right,
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        fontSize: 16,
                        color: Color.fromARGB(255, 44, 52, 54),
                      ),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xFFF9F9F9),
                        hintText: '...البحث عن أماكن أو فرق موسيقية',
                        suffixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 86.h,
                width: 0.8.sw,
                child: ListView.builder(
                  reverse: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: categoriesData.length,
                  itemBuilder: (context, index) {
                    return CategoryCard(
                      title: categoriesData.keys.elementAt(index),
                      imageAsset: imageUrl[index],
                    );
                  },
                ),
              ),
              SizedBox(height: 16.h),
              Offerscard(),
              SizedBox(height: 16.h),
              SizedBox(
                width: 0.9.sw,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'المزيد',
                      style: const TextStyle(
                        fontSize: 24,
                        color: Color.fromARGB(255, 44, 52, 54),
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                    SizedBox(width: 0.6.sw),
                    Text(
                      'الأكثر شيوعاً',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color.fromARGB(255, 44, 52, 54),
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16.h),
              SingleChildScrollView(
                reverse: true,
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(width: 16.w),
                    BookingsCard(
                      title: 'قاعة الياسمين',
                      rating: 4.5,
                      imageUrl: AppAssets.bookingCards,
                    ),
                    SizedBox(width: 16.w),
                    BookingsCard(
                      title: 'قاعة الياسمين',
                      rating: 4.5,
                      imageUrl: AppAssets.bookingCards,
                    ),
                    SizedBox(width: 16.w),
                    BookingsCard(
                      title: 'قاعة الياسمين',
                      rating: 4.5,
                      imageUrl: AppAssets.bookingCards,
                    ),
                    SizedBox(width: 16.w),
                  ],
                ),
              ),
              SizedBox(height: 16.h),
              SizedBox(
                width: 0.9.sw,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'المزيد',
                      style: const TextStyle(
                        fontSize: 24,
                        color: Color.fromARGB(255, 44, 52, 54),
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                    SizedBox(width: 0.55.sw),
                    Text(
                      'الأكثر شيوعاً',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color.fromARGB(255, 44, 52, 54),
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16.h),
              SingleChildScrollView(
                reverse: true,
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(width: 16.w),
                    BookingsCard(
                      title: 'قاعة الياسمين',
                      rating: 4.5,
                      imageUrl: AppAssets.bookingCards2,
                    ),
                    SizedBox(width: 16.w),
                    BookingsCard(
                      title: 'قاعة الياسمين',
                      rating: 4.5,
                      imageUrl: AppAssets.bookingCards2,
                    ),
                    SizedBox(width: 16.w),
                    BookingsCard(
                      title: 'قاعة الياسمين',
                      rating: 4.5,
                      imageUrl: AppAssets.bookingCards2,
                    ),
                    SizedBox(width: 16.w),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NoGlowScrollBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
    BuildContext context,
    Widget child,
    ScrollableDetails details,
  ) {
    return child;
  }
}
