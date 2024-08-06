import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrimaryButtonOne extends StatelessWidget {
  final String text; // Button text
  final Color color; // Button background color
  final Color textColor; // Text color
  final VoidCallback onPressed; // Function to call when button is pressed
  final double borderRadius; // Border radius for rounded corners
  final double elevation; // Shadow elevation
  final EdgeInsetsGeometry padding; // Padding inside the button
  final double fontSize; // Font size of the button text
  final FontWeight fontWeight; // Font weight of the button text

  const PrimaryButtonOne({
    required this.text,
    required this.color,
    required this.textColor,
    required this.onPressed,
    this.borderRadius = 8, // Default border radius
    this.elevation = 5.0, // Default shadow elevation
    this.padding = const EdgeInsets.symmetric(vertical: 2.0), // Default padding
    this.fontSize = 16.0, // Default font size
    this.fontWeight = FontWeight.bold, // Default font weight
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // Button takes the full width
      padding: padding, // Padding inside the button
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: color, // Button background color
          foregroundColor: textColor, // Button text color
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius), // Border radius
          ),
          elevation: elevation, // Shadow elevation
          padding: padding, // Padding inside the button
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: fontSize, // Font size
            fontWeight: fontWeight, // Font weight
          ),
        ),
      ),
    );
  }
}
