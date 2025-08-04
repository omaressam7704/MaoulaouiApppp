import 'package:flutter/material.dart';

class SearchBarr extends StatelessWidget {
  const SearchBarr({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      readOnly: false,
      textAlign: TextAlign.right,
      textDirection: TextDirection.rtl,
      style: TextStyle(fontSize: 16, color: Color(0xFF9C9C9C)),
      decoration: InputDecoration(
        enabled: false,
        filled: true,
        fillColor: Color.fromARGB(255, 255, 255, 255),
        hintStyle: TextStyle(
          color: Color(0xFF9C9C9C),
          fontSize: 16,
          fontFamily: 'Tajawal',
        ),
        hintText: '...البحث عن أماكن أو فرق موسيقية',
        suffixIcon: Icon(Icons.search, color: Color(0xFF9C9C9C)),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
