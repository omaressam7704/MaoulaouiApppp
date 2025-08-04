import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:maoulaoui/screens/homescreen/widgets/button.dart';
import 'package:maoulaoui/screens/homescreen/widgets/textfieldcustom.dart';
import 'package:maoulaoui/shared/resources/asset_manager.dart';
import 'package:maoulaoui/screens/loginscreen/sign_in_screen.dart';

class SignInScreen extends StatefulWidget {
  static const String route = '/sign_in_screen';
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image.asset(AppAssets.M_logo, height: 132, width: 177),
            Image.asset(AppAssets.Al_Maoulaoui, height: 29, width: 177),
            SizedBox(height: 15),
            Text(
              'تسجيل الدخول',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
                fontFamily: 'tajawal',
              ),
            ),
            SizedBox(height: 25),
            TextfieldCustom(
              hintText: 'أدخل رقم هاتفك',
              icon: AppAssets.vector,
              title: 'رقم الهاتف',
            ),
            SizedBox(height: 20),
            TextfieldCustom(
              hintText: 'أدخل كلمة السر',
              icon: AppAssets.mdi_pass,
              title: 'كلمة السر',
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'هل نسيت كلمة المرور؟',
                  style: TextStyle(
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            Button(
              text: 'تسجيل الدخول',
              onPressed: SignInScreen.route,
              backgroundColor: Color(0xFFD3AF37),
              textColor: Colors.white,
              borderColor: Color(0xFFD3AF37),
            ),
            SizedBox(height: 10),
            Container(
              width: 358,
              height: 22,
              child: Stack(
                children: [
                  Positioned(
                    left: 174,
                    top: 0,
                    child: Text(
                      'أو',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: const Color(0x7F636E72),
                        fontSize: 12,
                        fontFamily: 'Cairo',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 191,
                    top: 11,
                    child: Container(
                      width: 167,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 1,
                            strokeAlign: BorderSide.strokeAlignCenter,
                            color: const Color(0x51636E72),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: 11,
                    child: Container(
                      width: 167,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 1,
                            strokeAlign: BorderSide.strokeAlignCenter,
                            color: const Color(0x51636E72),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: 460,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: const Color(0xFF636E72), width: 1),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 18.0,
                  horizontal: 70.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(AppAssets.google, height: 20, width: 20),
                    SizedBox(width: 10),
                    Text(
                      'Sign up with Google',
                      style: TextStyle(
                        color: const Color(0xFF636E72),
                        fontSize: 14,
                        fontFamily: 'Cairo',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),

            Row(
              textDirection: TextDirection.rtl,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'لا يوجد لديك حساب؟',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    fontFamily: 'Tajawal',
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, SignInScreen.route);
                  },
                  child: Text(
                    'إنشاء حساب',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Color(0xFFD3AF37),
                      fontSize: 16,
                      fontFamily: 'Tajawal',
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
