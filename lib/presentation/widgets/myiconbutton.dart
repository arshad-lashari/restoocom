import 'package:flutter/material.dart';
import 'package:restoocom/core/constants/colors.dart';
import 'package:restoocom/routes/heightwidth.dart';


class MyIconButton extends StatelessWidget {
  const MyIconButton({
    super.key,
    required this.onPressed,
    this.icon = Icons.arrow_back, // Default icon is arrow_back
  });

  final VoidCallback onPressed;
  final IconData icon; // Icon to be passed as a parameter

  @override
  Widget build(BuildContext context) {
    return IconButton(
      style: IconButton.styleFrom(
        backgroundColor: AppColors.white,
        fixedSize: Size(width * 0.067, height * 0.031),
      ),
      onPressed: onPressed,
      icon: Icon(icon), // Use the passed icon or the default one
    );
  }
}
