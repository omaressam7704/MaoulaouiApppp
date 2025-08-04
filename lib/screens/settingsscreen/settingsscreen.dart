import 'package:flutter/material.dart';
import 'package:maoulaoui/screens/bottomnavbar/bottomnavbarscreen.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            textDirection: TextDirection.rtl,
            'الاعدادات',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF2C3436),
              fontSize: 24,
              fontFamily: 'Tajawal',
              height: 0,
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.arrow_forward_ios_outlined),
            onPressed: () {
              Navigator.of(context).popAndPushNamed(Bottomnavbarscreen.route);
            },
          ),
        ],

        automaticallyImplyLeading: true, // Shows the back button
      ),
      body: Center(
        child: Text(
          'Settings Screen',
          style: TextStyle(fontSize: 24, color: Colors.black),
        ),
      ),
    );
  }
}
