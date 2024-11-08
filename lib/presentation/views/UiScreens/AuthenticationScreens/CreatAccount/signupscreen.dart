
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:restoocom/core/constants/colors.dart';
import 'package:restoocom/core/constants/images.dart';
import 'package:restoocom/presentation/widgets/MyTextField/mytextfield.dart';
import 'package:restoocom/presentation/widgets/MyTextField/textandlearnmorebutton.dart';
import 'package:restoocom/presentation/widgets/myappbar.dart';
import 'package:restoocom/presentation/widgets/myelevatedbutton.dart';
import 'package:restoocom/presentation/widgets/myiconbutton.dart';
import 'package:restoocom/presentation/widgets/mytextbutton.dart';
import 'package:restoocom/routes/heightwidth.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
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
        ), // Use the custom AppBar here
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
                  'Get your free account',
                  style: Theme.of(context)
                      .textTheme
                      .headlineLarge
                      ?.copyWith(fontSize: 33),
                ),
                SizedBox(
                  height: height * 0.040,
                ),
                Text(
                  'Email',
                  style: Theme.of(context).textTheme.labelLarge,
                ),
                SizedBox(
                  height: height * 0.010,
                ),
                MyTextField(
                  hintText: 'Hello@gmail.com',
                  fillColor: AppColors.scbg,
                ),
                SizedBox(
                  height: height * 0.020,
                ),
                Text(
                  'Password',
                  style: Theme.of(context).textTheme.labelLarge,
                ),
                SizedBox(
                  height: height * 0.010,
                ),
                MyTextField(
                  hintText: 'Password',
                  fillColor: AppColors.scbg,
                ),
                SizedBox(
                  height: height * 0.030,
                ),
                MyTextField(
                  hintText: 'Confirm Password',
                  fillColor: AppColors.scbg,
                ),
                SizedBox(
                  height: height * 0.030,
                ),
                MyElevatedButton(
                  textcolor: Colors.white,
                  text: 'Create account',
                  onPressed: () {},
                ),
                SizedBox(
                  height: height * 0.010,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Already have an account?',
                      style: TextStyle(
                        color: AppColors.bitblack,
                        fontSize: 15,
                      ),
                    ),
                    MyTextButton(
                      onPressed: () {
                        Get.back();
                      },
                      child: const Text('Login'),
                    )
                  ],
                ),
                SizedBox(height: height * 0.065),
                const Center(
                  child: Textbuttonandtext(),
                ),
              ],
            ),
          ),
        ));
  }
}
