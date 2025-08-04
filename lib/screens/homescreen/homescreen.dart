import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:maoulaoui/screens/homescreen/widgets/categories.dart';
import 'package:maoulaoui/screens/homescreen/data/categoriesdata.dart';
import 'package:maoulaoui/screens/homescreen/widgets/offerscard.dart';
import 'package:maoulaoui/screens/homescreen/widgets/bookingscard.dart';
import 'package:maoulaoui/screens/searchscreen/searchscreen.dart';
import 'package:maoulaoui/shared/resources/asset_manager.dart';
import 'package:maoulaoui/screens/homescreen/widgets/searchbar.dart';

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
      backgroundColor: Color.fromARGB(255, 243, 243, 243),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: SafeArea(
          child: SizedBox(
            width: 0.9.sw,
            height: 0.1.sh,
            child: Row(
              children: [
                InkWell(
                  onTap: () {},
                  child: SvgPicture.asset(
                    AppAssets.notifications,
                    height: 24,
                    width: 24,
                  ),
                ),
                SizedBox(width: 0.65.sw),
                Image.asset(AppAssets.logo, height: 60, width: 71),
              ],
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 16, bottom: 16),
        child: ScrollConfiguration(
          behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 0.9.sw,
                      height: 0.1.sh,
                      child: InkWell(
                        child: SearchBarr(),
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (ctx) => const SearchScreen(),
                            ),
                          );
                        },
                        onDoubleTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (ctx) => const SearchScreen(),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 86.h,
                  width: 1.sw,
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
                  width: 0.98.sw,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'المزيد',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF9C9C9C),
                          fontSize: 14,
                          fontFamily: 'Tajawal',

                          height: 0,
                        ),
                      ),
                      SizedBox(width: 0.65.sw),
                      Text(
                        'اشهر الفرق',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF333333),
                          fontSize: 16,
                          fontFamily: 'Tajawal',
                          height: 0,
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
                  width: 0.98.sw,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'المزيد',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF9C9C9C),
                          fontSize: 14,
                          fontFamily: 'Tajawal',

                          height: 0,
                        ),
                      ),
                      SizedBox(width: 0.65.sw),
                      Text(
                        'اشهر الفرق',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF333333),
                          fontSize: 16,
                          fontFamily: 'Tajawal',
                          height: 0,
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
