import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maoulaoui/shared/resources/asset_manager.dart';

class Offerscard extends StatefulWidget {
  final items = [
    Image.asset(AppAssets.card1),
    Image.asset(AppAssets.card2),
    Image.asset(AppAssets.card3),
  ];

  Offerscard({super.key});

  @override
  _OfferscardState createState() => _OfferscardState();
}

class _OfferscardState extends State<Offerscard> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 0.95,
            autoPlay: true,
            aspectRatio: 2.0,
            enableInfiniteScroll: false,
            onPageChanged: (index, reason) {
              setState(() {
                currentIndex = index;
              });
            },
          ),
          items: widget.items,
        ),
        SmoothIndicator(
          offset: currentIndex.toDouble(),
          count: widget.items.length,
          size: Size(8.0.w, 8.0.h),
          effect: ExpandingDotsEffect(
            dotWidth: 8.0.w,
            dotHeight: 8.0.h,
            activeDotColor: Color(0xFFD3AF37),
            dotColor: Color.fromARGB(51, 99, 110, 114),
          ),
        ),
        SizedBox(height: 16.0.h),
      ],
    );
  }
}
