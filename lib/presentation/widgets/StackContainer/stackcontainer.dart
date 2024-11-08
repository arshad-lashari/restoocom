import 'package:flutter/material.dart';
import 'package:restoocom/core/constants/colors.dart';
import 'package:restoocom/core/constants/images.dart';

class StackContainer extends StatelessWidget {
  const StackContainer({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
  });

  final double screenHeight;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 131,
      width: screenWidth * 0.9,
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            spreadRadius: 1,
            blurRadius: 2,
            offset: Offset(0.5, 0.5),
          ),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 14),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "McDonald's - Seri Austin DT",
                  style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                        fontSize: screenWidth * 0.045,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: const Icon(
                    Icons.arrow_forward_ios,
                    size: 18,
                    color: AppColors.bitblack,
                  ),
                )
              ],
            ),
            const Divider(color: Colors.black54),
            Row(
              children: [
                const Icon(
                  Icons.star,
                  size: 13,
                  color: AppColors.background,
                ),
                const SizedBox(width: 4),
                Text(
                  "4.7 .",
                  style: TextStyle(fontSize: screenWidth * 0.035),
                ),
                Text(
                  "View Rating and Review",
                  style: TextStyle(fontSize: screenWidth * 0.035),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {},
                  child: const Icon(
                    Icons.arrow_forward_ios,
                    size: 18,
                    color: AppColors.bitblack,
                  ),
                )
              ],
            ),
            const Divider(color: Colors.black54),
            Row(
              children: [
                Image.asset(
                  Appimages.picupicon,
                  height: screenWidth * 0.035,
                  width: screenWidth * 0.035,
                ),
                const SizedBox(width: 4),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "3km away",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: screenWidth * 0.04,
                        ),
                      ),
                      TextSpan(
                        text: " (Pick up in 15 mins)",
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: screenWidth * 0.035,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
