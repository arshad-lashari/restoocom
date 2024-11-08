

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:restoocom/core/constants/colors.dart';
import 'package:restoocom/core/constants/images.dart';
import 'package:restoocom/presentation/views/UiScreens/DrawerScreens/customdrawer.dart';
import 'package:restoocom/presentation/widgets/MyTextField/mytextfield.dart';
import 'package:restoocom/presentation/widgets/myappbar.dart';
import 'package:restoocom/presentation/widgets/myelevatedbutton.dart';
import 'package:restoocom/routes/heightwidth.dart';

class LogOutScreen extends StatefulWidget {
  const LogOutScreen({super.key});

  @override
  State<LogOutScreen> createState() => _LogOutScreenState();
}

class _LogOutScreenState extends State<LogOutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scbg,
      endDrawer: const CustomDrawer(),
      appBar: CustomAppBar(
        title: Image.asset(
          Appimages.logoimage,
          height: height * 0.060,
          width: width * 0.35,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: Get.width * 0.035),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: height * 0.050,
            ),
            Text(
              'Full Name',
              style: Theme.of(context).textTheme.labelLarge,
            ),
            SizedBox(
              height: height * 0.010,
            ),
            MyTextField(
              hintText: 'Enter Your Email',
              fillColor: AppColors.scbg,
            ),
            SizedBox(
              height: height * 0.020,
            ),
            Text(
              'Email Adress',
              style: Theme.of(context).textTheme.labelLarge,
            ),
            SizedBox(
              height: height * 0.010,
            ),
            MyTextField(
              hintText: 'Enter your email adress',
              fillColor: AppColors.scbg,
            ),
            SizedBox(
              height: height * 0.020,
            ),
            Text(
              'Phone Number',
              style: Theme.of(context).textTheme.labelLarge,
            ),
            SizedBox(
              height: height * 0.010,
            ),
            SizedBox(
              height: height * 0.082,
              width: width * 1.03,
              child: IntlPhoneField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(5),
                  hintText: 'Enter Your Phone Number',
                  fillColor: AppColors.scbg,
                  filled: true,
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  prefixIconConstraints:
                      const BoxConstraints(minWidth: 0, minHeight: 0),
                  prefixIcon: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    decoration: const BoxDecoration(
                      border: Border(
                        right: BorderSide(
                          color: Colors.grey, // Divider color
                          width: 1,
                        ),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Text(
                        '+1', // Default country code or variable as needed
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                    ),
                  ),
                ),
                initialCountryCode: 'US',
                showCountryFlag: false,
                onChanged: (phone) {
                  print(phone.completeNumber); // Prints the full phone number
                },
              ),
            ),
            Text(
              'Adress',
              style: Theme.of(context).textTheme.labelLarge,
            ),
            SizedBox(
              height: height * 0.010,
            ),
            MyTextField(
              hintText: 'Enter your adress',
              fillColor: AppColors.scbg,
            ),
            SizedBox(
              height: height * 0.040,
            ),
            MyElevatedButton(
              elevation: 4,
              backgroundColor: AppColors.background,
              onPressed: () {},
              textcolor: Colors.black,
              text: 'Save Changes',
            ),
            SizedBox(
              height: height * 0.020,
            ),
            MyElevatedButton(
              elevation: 4,
              backgroundColor: Colors.red,
              onPressed: () {},
              textcolor: Colors.white,
              text: 'Save Changes',
            )
          ],
        ),
      ),
    );
  }
}
