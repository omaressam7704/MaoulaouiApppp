import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookingsCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final double rating;
  final String buttonText;

  const BookingsCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.rating,
    this.buttonText = 'حجز',
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Container(
        width: 216.w,
        height: 241.2.h,
        clipBehavior: Clip.antiAlias,
        decoration: ShapeDecoration(
          color: const Color(0xFFFAFAFA),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.8.r),
          ),
          shadows: [
            BoxShadow(
              color: Color(0x19000000),
              blurRadius: 3.6.r,
              offset: Offset(0, 0),
              spreadRadius: 0,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 216.w,
              height: 121.5.h,
              clipBehavior: Clip.antiAlias,
              decoration: ShapeDecoration(
                image: DecorationImage(
                  image: AssetImage(imageUrl),
                  fit: BoxFit.fill,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10.8.r),
                    topRight: Radius.circular(10.8.r),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(
                  horizontal: 14.4.w,
                  vertical: 8.h,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Color(0xFF2C3436),
                              size: 14.sp,
                            ),
                            SizedBox(width: 4.w),
                            Text(
                              rating.toStringAsFixed(1),
                              style: TextStyle(
                                color: Color(0xFF2C3436),
                                fontSize: 12.sp,
                                fontFamily: 'Tajawal',
                                fontWeight: FontWeight.w300,
                                height: 1.33,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          title,
                          style: TextStyle(
                            color: Color(0xFF0F1416),
                            fontSize: 14.4.sp,
                            fontFamily: 'Tajawal',
                            fontWeight: FontWeight.w500,
                            height: 1.5,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      'الموقع',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Color(0xFF5B7289),
                        fontSize: 12.6.sp,
                        fontFamily: 'Manrope',
                        fontWeight: FontWeight.w400,
                        height: 1.5,
                      ),
                    ),
                    Spacer(),
                    SizedBox(
                      width: double.infinity,
                      height: 36.h,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFEAEDF2),
                          foregroundColor: Color(0xFF2C3436),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                          elevation: 0,
                          padding: EdgeInsets.zero,
                        ),
                        onPressed: () {},
                        child: Text(
                          buttonText,
                          style: TextStyle(
                            fontFamily: 'Tajawal',
                            fontWeight: FontWeight.w500,
                            fontSize: 14.sp,
                            height: 1.35,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
