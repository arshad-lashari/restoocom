import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restoocom/core/constants/colors.dart';
import 'package:restoocom/core/constants/images.dart';
import 'package:restoocom/routes/heightwidth.dart';


class CustomContainer extends StatelessWidget {
  const CustomContainer({
    Key? key,
    this.title,
    this.subtitlt,
    this.icon,
    this.text,
    this.secondtext, this.dottext,
  }) : super(key: key);

  final String? title;
  final String? subtitlt;
  final Widget? icon;
  final String? text;
  final String? secondtext;
  final String? dottext;

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: height * 0.14,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Container(
              width: width * 0.3,
              height: height * 0.12,
              decoration: BoxDecoration(
                image:  DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(Appimages.resurant1),
                ),
                borderRadius: BorderRadius.circular(3),
                color: Colors.white,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: Get.height * 0.010, horizontal: Get.width * 0.040),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title ?? '',
                    style: Theme.of(context)
                        .textTheme
                        .headlineLarge
                        ?.copyWith(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    subtitlt ?? '',
                    style: const TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                        color: AppColors.bitblack),
                  ),
                  const SizedBox(height: 7),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      if (icon != null) icon!,
                      const SizedBox(width: 3),
                      Text(text ?? ''),
                      Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 5),
                        child: Text(dottext??''),
                      ),
                      Text(
                        secondtext ?? '',
                        style: const TextStyle(color: AppColors.bitblack),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
