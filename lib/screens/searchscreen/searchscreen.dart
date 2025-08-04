import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  void _openFilterBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (_) => const FilterBottomSheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(Icons.arrow_forward_ios_outlined),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],

        automaticallyImplyLeading: false,
      ),
      body: Container(
        width: 390.w,
        height: 844.h,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(color: Colors.white.withOpacity(0.1)),
        child: Stack(
          children: [
            Positioned(
              left: 16.w,
              top: 76.h,
              child: SizedBox(
                width: 358.w,
                child: Text(
                  'البحث',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: const Color(0xFF2C3436),
                    fontSize: 24.sp,
                    fontFamily: 'Tajawal',
                    height: 1.0,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 16.w,
              top: 124.h,
              child: _SearchBar(_openFilterBottomSheet),
            ),
            Positioned(
              left: 270.w,
              top: 209.h,
              child: Text(
                'نتائج البحث الأخيرة',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color(0xFF333333),
                  fontSize: 14.sp,
                  fontFamily: 'Tajawal',
                  height: 1.0,
                ),
              ),
            ),
            Positioned(
              left: 16.w,
              top: 242.h,
              child: SizedBox(
                height: 180.76.h,
                child: Column(
                  children: [
                    _searchResultRow('فرقة اكس تيم '),
                    SizedBox(height: 6.h),
                    _searchResultRow('قاعة الياسمين'),
                    SizedBox(height: 6.h),
                    _searchResultRow('فرقة اكس تيم '),
                    SizedBox(height: 6.h),
                    _searchResultRow('قاعة الياسمين'),
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

class _SearchBar extends StatelessWidget {
  final Function(BuildContext) onFilterTap;
  const _SearchBar(this.onFilterTap);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 358.w,
      height: 48.h,
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      decoration: ShapeDecoration(
        color: const Color(0xFFF8F8F8),
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 0.50.w, color: const Color(0x7F9C9C9C)),
          borderRadius: BorderRadius.circular(10.r),
        ),
      ),
      child: Row(
        children: [
          InkWell(
            onTap: () => onFilterTap(context),
            child: SvgPicture.asset(
              'assets/images/filter.svg',

              colorFilter: const ColorFilter.mode(
                Color(0xFF9C9C9C),
                BlendMode.srcIn,
              ),
              width: 24.w,
              height: 24.h,
            ),
          ),
          SizedBox(width: 16.w),
          const Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'البحث عن أماكن أو فرق موسيقية...',
                  style: TextStyle(
                    color: Color(0xFF9C9C9C),
                    fontSize: 14,
                    fontFamily: 'Tajawal',
                  ),
                ),
                Icon(Icons.search, color: Color(0xFF9C9C9C)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget _searchResultRow(String text) {
  return SizedBox(
    width: 358.w,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SvgPicture.asset(
          'assets/images/arrow.svg',

          colorFilter: const ColorFilter.mode(
            Color(0xFF9C9C9C),
            BlendMode.srcIn,
          ),
          width: 32.w,
          height: 32.h,
        ),
        SizedBox(width: 242.w),
        Text(
          text,
          style: TextStyle(
            color: const Color(0xFF9C9C9C),
            fontSize: 14.sp,
            fontFamily: 'Tajawal',
          ),
        ),
      ],
    ),
  );
}

class FilterBottomSheet extends StatelessWidget {
  const FilterBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.75,
      minChildSize: 0.6,
      maxChildSize: 0.95,
      builder: (_, controller) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          ),
          child: ListView(
            controller: controller,
            children: [
              Center(
                child: Container(
                  width: 40,
                  height: 5,
                  margin: const EdgeInsets.only(bottom: 16),
                  decoration: BoxDecoration(
                    color: Colors.grey[400],
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const Center(
                child: Text(
                  'فلترة متقدمة',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.location_on_outlined),
                  hintText: 'الموقع',
                  suffixIcon: const Icon(Icons.search),
                  filled: true,
                  fillColor: Colors.grey[100],
                  contentPadding: const EdgeInsets.symmetric(vertical: 14),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              const Text(
                'السعر',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  activeTrackColor: const Color(0xFFFFC727),
                  inactiveTrackColor: Colors.grey[300],
                  thumbColor: const Color(0xFFFFC727),
                  overlayColor: const Color(0x33FFC727),
                ),
                child: Slider(
                  min: 85720,
                  max: 140390,
                  value: 100000,
                  onChanged: (_) {},
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text('140,390 ريال'), Text('85,720 ريال')],
              ),
              const SizedBox(height: 30),
              const Text(
                'السعة',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const RadioListTile(
                title: Text('اكثر من 50'),
                value: 'اكثر من 50',
                groupValue: 'اكثر من 50',
                activeColor: Color(0xFFFFC727),
                onChanged: null,
              ),
              const RadioListTile(
                title: Text('من 50 لـ 100'),
                value: 'من 50 لـ 100',
                groupValue: 'اكثر من 50',
                activeColor: Color(0xFFFFC727),
                onChanged: null,
              ),
              const RadioListTile(
                title: Text('اكثر من 100'),
                value: 'اكثر من 100',
                groupValue: 'اكثر من 50',
                activeColor: Color(0xFFFFC727),
                onChanged: null,
              ),
              const SizedBox(height: 20),
              const Text(
                'التقييم',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const RadioListTile(
                title: Text('5 نجوم'),
                value: '5 نجوم',
                groupValue: '5 نجوم',
                activeColor: Color(0xFFFFC727),
                onChanged: null,
              ),
              const RadioListTile(
                title: Text('3 نجوم'),
                value: '3 نجوم',
                groupValue: '5 نجوم',
                activeColor: Color(0xFFFFC727),
                onChanged: null,
              ),
              const RadioListTile(
                title: Text('2 نجمة'),
                value: '2 نجمة',
                groupValue: '5 نجوم',
                activeColor: Color(0xFFFFC727),
                onChanged: null,
              ),
              const SizedBox(height: 30),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    backgroundColor: const Color(0xFFFFC727),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  onPressed: () => Navigator.pop(context),
                  child: const Text(
                    'بحث',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        );
      },
    );
  }
}
