import 'package:flutter/material.dart';
import 'package:maoulaoui/screens/homescreen/homescreen.dart';
import 'package:maoulaoui/screens/accountscreen/accountscreen.dart';
import 'package:maoulaoui/screens/bookingscreen/bookingscreen.dart';
import 'package:maoulaoui/screens/searchscreen/searchscreen.dart';

class Bottomnavbarscreen extends StatefulWidget {
  static const String route = "/BottomNavBarScreen";
  const Bottomnavbarscreen({super.key});
  @override
  _BottomnavbarscreenState createState() => _BottomnavbarscreenState();
}

final List<Widget> _pages = [
  AccountScreen(),
  BookingScreen(),
  SearchScreen(),
  Homescreen(),
];

class _BottomnavbarscreenState extends State<Bottomnavbarscreen> {
  int _selectedIndex = 3;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: const Color(0xFFD3AF37),
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.airplane_ticket_outlined),
            label: 'Bookings',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),

          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'Home'),
        ],
        currentIndex: _selectedIndex,
        onTap: (index) {
          _onItemTapped(index);
        },
      ),
    );
  }
}
