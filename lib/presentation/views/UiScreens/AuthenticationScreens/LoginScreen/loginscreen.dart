


import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:restoocom/core/constants/colors.dart';
import 'package:restoocom/core/constants/images.dart';
import 'package:restoocom/presentation/widgets/MyTextField/mytextfield.dart';
import 'package:restoocom/presentation/widgets/MyTextField/textandlearnmorebutton.dart';
import 'package:restoocom/presentation/widgets/myelevatedbutton.dart';
import 'package:restoocom/presentation/widgets/myoutlinebutton.dart';
import 'package:restoocom/presentation/widgets/mytextbutton.dart';
import 'package:restoocom/routes/heightwidth.dart';
import 'package:restoocom/routes/routes.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    print("Screen height: $height");
    print("Screen width: $width");
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: Get.width * 0.024),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: height * .088),
              Center(
                child: Image.asset(
                  Appimages.logoimage,
                  height: height * .15,
                  width: width * 0.9,
                ),
              ),
              SizedBox(height: height * 0.067),
              Text(
                'EMAIL',
                style: Theme.of(context).textTheme.labelLarge,
              ),
              const MyTextField(
                hintText: 'hello@example.com',
              ),
              SizedBox(height: height * 0.015),
              Text(
                'Password',
                style: Theme.of(context).textTheme.labelLarge,
              ),
              const MyTextField(
                hintText: 'Your Password',
                suffixIcon: Icon(Icons.visibility),
              ),
              SizedBox(height: height * 0.01),
              MyTextButton(
                onPressed: () {
                  Get.toNamed(Routes.forgetpassword);
                },
                textColor: AppColors.blueaccent,
                child: const Text(
                  'Forget Password',
                  style: TextStyle(color: AppColors.blueaccent),
                ),
              ),
              SizedBox(height: height * 0.01),
              Center(
                child: MyElevatedButton(
                  textcolor: Colors.white,
                  text: 'Login',
                  onPressed: () {
                    Get.toNamed(Routes.navbar);
                  },
                ),
              ),
              SizedBox(height: height * 0.02),
              Center(
                child: Row(
                  children: [
                    const Expanded(
                      child: Divider(
                        thickness: 1,
                        color: AppColors.bitblack,
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: Get.width * 0.02),
                      child: const Text(
                        'OR',
                        style: TextStyle(
                          color: AppColors.bitblack,
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    const Expanded(
                      child: Divider(
                        thickness: 1,
                        color: AppColors.bitblack,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: height * 0.02),
              Center(
                child: MyOutlineButton(
                  onPressed: () {
                    Get.toNamed(Routes.createaccount);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: height * 0.08,
                        width: width * 0.08,
                        child: Image.asset(Appimages.accountimage),
                      ),
                      // SizedBox(width: width * 0.16),
                      const Spacer(),
                      Text(
                        'Create An Account',
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                      const Spacer(),
                    ],
                  ),
                ),
              ),
              SizedBox(height: height * 0.10),
              const Center(
                child: Textbuttonandtext(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
