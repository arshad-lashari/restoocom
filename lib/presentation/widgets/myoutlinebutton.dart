import 'package:flutter/material.dart';
import 'package:restoocom/routes/heightwidth.dart';

class MyOutlineButton extends StatelessWidget {
  const MyOutlineButton({
    super.key,
    this.prefixIcon,
    this.suffixIcon,
    required this.onPressed,
    required this.child,
  });
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final VoidCallback onPressed;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: const BorderSide(color: Colors.black, width: 10),
          ),
          fixedSize: Size(width * 1.03, height * 0.060),
        ),
        onPressed: onPressed,
        child: child);
  }
}
