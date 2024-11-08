import 'package:flutter/material.dart';
import 'package:restoocom/core/constants/colors.dart';

class MyTextButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Widget? child;
  final Color textColor;


  const MyTextButton({
    Key? key,
    required this.child,          // Text for the button, required
    this.onPressed,              // Action to perform on press, optional
    this.textColor = AppColors.blueaccent, // Default color if not provided
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: child!
    );
  }
}
