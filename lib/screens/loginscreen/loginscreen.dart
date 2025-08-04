import 'package:flutter/material.dart';
import 'package:maoulaoui/screens/bottomnavbar/bottomnavbarscreen.dart';
import 'package:maoulaoui/shared/resources/asset_manager.dart';

class Loginscreen extends StatelessWidget {
  static const String route = '/login';
  const Loginscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(height: 80),
            Image.asset(AppAssets.M_logo, height: 132, width: 177),
            Image.asset(AppAssets.Al_Maoulaoui, height: 29, width: 177),
            SizedBox(height: 25),
            Text(
              textAlign: TextAlign.center,
              textDirection: TextDirection.rtl,
              'مرحباً بك في تطبيقنا المتخصص في حجز قاعات المناسبات - خطط لمناسبتك القادمه الآن!',
              style: TextStyle(
                fontSize: 16,
                fontFamily: 'Tajawal',
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 40),
            Text(
              'اختر تسجيل الدخول او الاشتراك للبدء',
              style: TextStyle(
                fontSize: 16,
                fontFamily: 'Tajawal',
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 20),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFD4AF37), // Gold
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                child: Text('تسجيل الدخول', style: TextStyle(fontSize: 16)),
              ),
            ),
            SizedBox(height: 12),

            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: Color(0xFFD4AF37), width: 2),
                  foregroundColor: Color(0xFFD4AF37), // Text color
                  backgroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                child: Text('الاشتراك', style: TextStyle(fontSize: 16)),
              ),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (_) => const Bottomnavbarscreen()),
                );
              },
              child: Text(
                'التخطي للصفحة الرئيسية',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
