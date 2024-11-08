

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
import 'package:restoocom/routes/heightwidth.dart';

class SetNewPassword extends StatefulWidget {
  const SetNewPassword({super.key});

  @override
  State<SetNewPassword> createState() => _SetNewPasswordState();
}

class _SetNewPasswordState extends State<SetNewPassword> {
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
      ),
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
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: MyIconButton(
                  onPressed: () {
                    Get.back();
                  },
                ),
              ),
              Text(
                'Set a new password',
                style: Theme.of(context)
                    .textTheme
                    .headlineLarge
                    ?.copyWith(fontSize: 33),
              ),
              SizedBox(
                height: height * 0.020,
              ),
              Text(
                'Password',
                style: Theme.of(context).textTheme.labelLarge,
              ),
              SizedBox(
                height: height * 0.005,
              ),
              MyTextField(
                suffixIcon: const Icon(Icons.visibility),
                hintText: 'Password',
                fillColor: AppColors.scbg,
              ),
              SizedBox(
                height: height * 0.020,
              ),
              MyTextField(
                suffixIcon: const Icon(Icons.visibility),
                hintText: 'Confirm Password',
                fillColor: AppColors.scbg,
              ),
              SizedBox(
                height: height * 0.030,
              ),
              MyElevatedButton(
                  textcolor: Colors.white,
                  onPressed: () {},
                  text: 'Reset Password')
            ],
          ),
        ),
      ),
    );
  }
}
