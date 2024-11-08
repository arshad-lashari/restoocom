

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:restoocom/core/constants/colors.dart';
import 'package:restoocom/core/constants/images.dart';
import 'package:restoocom/presentation/widgets/MyTextField/mytextfield.dart';
import 'package:restoocom/presentation/widgets/myappbar.dart';
import 'package:restoocom/presentation/widgets/myelevatedbutton.dart';
import 'package:restoocom/presentation/widgets/myiconbutton.dart';
import 'package:restoocom/presentation/widgets/mytextbutton.dart';
import 'package:restoocom/routes/heightwidth.dart';
import 'package:restoocom/routes/routes.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scbg,
      appBar: CustomAppBar(
        title: Image.asset(
          Appimages.logoimage,
          height: height * 0.060,
          width: width * 0.35,
        ),
      ), // Use the custom AppBar here,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: Get.width * 0.050),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 7,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: MyIconButton(onPressed: () {
                  Get.back();
                }),
              ),
              SizedBox(
                height: height * 0.030,
              ),
              Text(
                'Forget your password?',
                style: Theme.of(context)
                    .textTheme
                    .headlineLarge
                    ?.copyWith(fontSize: 32),
              ),
              SizedBox(
                height: height * 0.040,
              ),
              Text(
                'Email',
                style: Theme.of(context).textTheme.labelLarge,
              ),
              const MyTextField(hintText: 'Enter your registered email'),
              SizedBox(
                height: height * 0.025,
              ),
              MyElevatedButton(
                textcolor: Colors.white,
                text: 'Reset Password',
                onPressed: () {
                  Get.toNamed(Routes.resetpassword);
                },
              ),
              SizedBox(
                height: height * 0.025,
              ),
              MyTextButton(
                onPressed: () {
                  Get.back();
                  Get.back();
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.arrow_back,
                      color: AppColors.bitblack,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Back to login',
                      style: TextStyle(color: AppColors.bitblack),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
