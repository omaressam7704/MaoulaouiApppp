import 'package:flutter/material.dart';
import 'package:maoulaoui/screens/bottomnavbar/bottomnavbarscreen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maoulaoui/screens/splashscreen/splashscreen.dart';
import 'package:maoulaoui/screens/onboardingscreen/onboardingscreen.dart';
import 'package:maoulaoui/screens/loginscreen/loginscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,

      builder: (_, child) {
        return MaterialApp(
          initialRoute: SplashScreen.route,
          routes: {
            SplashScreen.route: (context) => const SplashScreen(),
            OnboardingScreen.route: (context) => const OnboardingScreen(),
            Loginscreen.route: (context) => const Loginscreen(),
            Bottomnavbarscreen.route: (context) => const Bottomnavbarscreen(),
          },
          debugShowCheckedModeBanner: false,

          theme: ThemeData(
            primarySwatch: Colors.blue,
            textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
          ),
          home: child,
        );
      },
    );
  }
}
