import 'package:flutter/material.dart';
import 'package:maoulaoui/shared/resources/asset_manager.dart';

class TextfieldCustom extends StatelessWidget {
  final String hintText;
  final String? icon;
  final String? title;
  const TextfieldCustom({required this.hintText, this.icon, this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              title ?? '',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                fontFamily: 'tajawal',
              ),
            ),
            SizedBox(width: 8),

            if (icon != null) Image.asset(icon!, height: 16, width: 16),
          ],
        ),
        TextField(
          textAlign: TextAlign.right,
          textDirection: TextDirection.rtl,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(
              color: Color(0xFF9C9C9C),
              fontSize: 14,
              fontWeight: FontWeight.w400,
              fontFamily: 'tajawal',
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: Color(0xFF9C9C9C), width: 1),
            ),
          ),
        ),
      ],
    );
  }
}
