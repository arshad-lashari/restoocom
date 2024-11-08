import 'package:flutter/material.dart';

class RowButton extends StatelessWidget {
  const RowButton({
    Key? key,
    required this.text,
    this.icon = const Icon(Icons.arrow_forward_ios), // Default icon
    required this.onTap,
  }) : super(key: key);

  final String text;
  final Widget icon; // Make icon non-nullable since it has a default value
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: Theme.of(context).textTheme.labelLarge?.copyWith(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
          ),
          icon, // No need to check for null
        ],
      ),
    );
  }
}
