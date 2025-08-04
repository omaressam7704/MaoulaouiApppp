import 'package:flutter/material.dart';
import 'package:maoulaoui/shared/resources/asset_manager.dart';
import 'package:maoulaoui/screens/loginscreen/sign_in_screen.dart';
import 'package:maoulaoui/screens/homescreen/widgets/button.dart';

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

            Button(
              text: 'تسجيل الدخول',
              onPressed: SignInScreen.route,
              backgroundColor: Color(0xFFD3AF37), // Gold
              textColor: Colors.white,
              borderColor: Color(0xFFD3AF37), // Gold
            ),
            SizedBox(height: 12),

            Button(
              text: 'الاشتراك',
              onPressed: SignInScreen.route,
              backgroundColor: Colors.white,
              textColor: Color(0xFFD3AF37),
              borderColor: Color(0xFFD3AF37), // Gold
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () {},
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
