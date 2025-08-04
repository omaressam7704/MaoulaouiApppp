import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final String onPressed;
  final Color backgroundColor;
  final Color textColor;
  final Color borderColor;
  const Button({
    Key? key,
    required this.text,
    required this.onPressed,
    required this.backgroundColor,
    required this.textColor,
    required this.borderColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, onPressed);
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor, // Gold
          foregroundColor: textColor,
          padding: EdgeInsets.symmetric(vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
            side: BorderSide(color: borderColor, width: 1),
          ),
        ),
        child: Text(text, style: TextStyle(fontSize: 16)),
      ),
    );
  }
}
