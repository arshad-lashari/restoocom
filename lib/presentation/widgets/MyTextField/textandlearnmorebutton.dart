import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:restoocom/core/constants/colors.dart';

class Textbuttonandtext extends StatelessWidget {
  const Textbuttonandtext({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: "Resto.com uses cookies for analytics and personalised\n"
            "contents and ads. By using Resto.com services you agree\n"
            "to this use of cookies. ",
        style: const TextStyle(
            color: AppColors.bitblack, fontSize: 12), // Base style
        children: [
          TextSpan(
            text: "Learn More",
            style: const TextStyle(
                color: Colors.blue, fontWeight: FontWeight.bold),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                // Action when "Learn More" is tapped
                print("Learn More tapped");
              },
          ),
        ],
      ),
    );
  }
}
