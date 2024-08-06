import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  final String hintText; // Hint text for the text field
  final Color borderColor; // Border color
  final Color textColor; // Text color
  final Color hintTextColor; // Hint text color
  final double borderRadius; // Border radius for rounded corners
  final EdgeInsetsGeometry padding; // Padding inside the text field
  final double fontSize; // Font size of the text field
  final FontWeight fontWeight; // Font weight of the text field
  final TextEditingController? controller; // Controller for managing the text field's text
  final TextInputType keyboardType; // Keyboard type for the text field
  final bool obscureText; // Whether the text field should obscure text (for passwords)
  final double elevation; // Elevation for shadow effect
  final Color shadowColor; // Color of the shadow

  const CustomTextField({
    required this.hintText,
    required this.borderColor,
    required this.textColor,
    required this.hintTextColor,
    this.borderRadius = 8.0, // Default border radius
    this.padding = const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0), // Default padding
    this.fontSize = 16.0, // Default font size
    this.fontWeight = FontWeight.normal, // Default font weight
    this.controller, // Optional text editing controller
    this.keyboardType = TextInputType.text, // Default keyboard type
    this.obscureText = false, // Default to not obscuring text
    this.elevation = 4.0, // Default elevation for shadow
    this.shadowColor = Colors.grey, // Default shadow color
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // Initialize ScreenUtil
    ScreenUtil.init(context);

    return Container(
      padding: EdgeInsets.all(2.0), // Add padding around the text field for shadow effect
      decoration: BoxDecoration(
        color: const Color.fromARGB(166, 255, 255, 255), // Background color for the container
        borderRadius: BorderRadius.circular(borderRadius.r), // Use ScreenUtil for border radius
        boxShadow: [
          BoxShadow(
            color: shadowColor.withOpacity(0.3), // Shadow color with opacity
            spreadRadius: elevation, // Spread radius of the shadow
            blurRadius: elevation * 2, // Blur radius of the shadow
            offset: Offset(0, elevation), // Offset of the shadow
          ),
        ],
      ),
      child: TextField(
        
        controller: controller,
        keyboardType: keyboardType,
        obscureText: obscureText,
        style: TextStyle(
          color: textColor,
          fontSize: fontSize.sp, // Use ScreenUtil for font size
          fontWeight: fontWeight,
        ),
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            color: hintTextColor,
            fontSize: fontSize.sp, // Use ScreenUtil for font size
            fontWeight: fontWeight,
          ),
          contentPadding: padding,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius.r), // Use ScreenUtil for border radius
            borderSide: BorderSide(color: borderColor),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius.r), // Use ScreenUtil for border radius
            borderSide: BorderSide(color: borderColor),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius.r), // Use ScreenUtil for border radius
            borderSide: BorderSide(color: borderColor),
          ),
        ),
      ),
    );
  }
}
