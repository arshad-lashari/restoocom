import 'package:flutter/material.dart';
import 'package:restoocom/routes/heightwidth.dart';

class MyElevatedButton extends StatelessWidget {
  const MyElevatedButton({
    super.key,
    required this.text,
    this.onPressed,
    this.icon,
    this.backgroundColor = Colors.black,
    this.textcolor,
    this.elevation, // Set the default background color here
  });

  final String text;
  final VoidCallback? onPressed;
  final Widget? icon;
  final Color backgroundColor; // Correctly declare as Color
  final Color? textcolor;
  final double? elevation;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        elevation: elevation,
        backgroundColor: backgroundColor, // Use the background color here
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        fixedSize: Size(width * 1.03, height * 0.060),
      ),
      onPressed: onPressed, // Updated to use the onPressed property
      icon: icon ??
          const SizedBox
              .shrink(), // Show icon if provided, else use an empty widget
      label: Text(
        text,
        style: Theme.of(context).textTheme.labelLarge?.copyWith(
              color: textcolor,
            ),
      ),
    );
  }
}
