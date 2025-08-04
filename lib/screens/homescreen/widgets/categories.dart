import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryCard extends StatelessWidget {
  final String title;
  final String imageAsset;
  final double cardWidth;
  final double cardHeight;
  final double imageWidth;
  final double imageHeight;

  const CategoryCard({
    super.key,
    required this.title,
    required this.imageAsset,
    this.cardWidth = 44,
    this.cardHeight = 66,
    this.imageWidth = 32,
    this.imageHeight = 32,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: cardHeight.h,
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 6.h),
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 0.5.w, color: const Color(0x3D636E72)),
          borderRadius: BorderRadius.circular(8.r),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: cardWidth.w,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: imageWidth.w,
                  height: imageHeight.h,
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(),
                  child: Image.asset(imageAsset, fit: BoxFit.contain),
                ),
                SizedBox(height: 5.h),
                SizedBox(
                  width: cardWidth.w,
                  child: Text(
                    title,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: const Color(0xFF929494),
                      fontSize: 14.sp,
                      fontFamily: 'Tajawal',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
