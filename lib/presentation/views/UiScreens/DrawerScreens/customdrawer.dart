


import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:restoocom/core/constants/colors.dart';
import 'package:restoocom/presentation/views/UiScreens/DrawerScreens/DrawerHelper/rowbutton.dart';
import 'package:restoocom/routes/heightwidth.dart';
import 'package:restoocom/routes/routes.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.background,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: Get.width * 0.1),
        child: Column(
          children: [
            SizedBox(
                height: Get.height *
                    0.15), // Replace the Positioned widget with SizedBox for spacing
            RowButton(
              text: 'My Profile',
              onTap: () {},
            ),
            SizedBox(
              height: height * 0.030,
            ),
            RowButton(
              text: 'Resto.com business',
              onTap: () {},
            ),
            SizedBox(
              height: height * 0.030,
            ),
            RowButton(
              text: 'Help Centre',
              onTap: () {},
            ),
            SizedBox(
              height: height * 0.030,
            ),
            RowButton(
              text: 'Privacy & Policy',
              onTap: () {},
            ),
            SizedBox(
              height: height * 0.030,
            ),
            RowButton(
              text: 'Logout',
              onTap: () {

                Get.toNamed(Routes.logout);


              },
              icon: const Icon(Icons.logout),
            ),
          ],
        ),
      ),
    );
  }
}
