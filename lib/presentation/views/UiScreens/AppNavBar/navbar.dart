

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restoocom/core/constants/colors.dart';
import 'package:restoocom/core/constants/images.dart';
import 'package:restoocom/presentation/views/UiScreens/AcivityScreen/activityscreen.dart';
import 'package:restoocom/presentation/views/UiScreens/FinanaceScreen/financescreen.dart';
import 'package:restoocom/presentation/views/UiScreens/MyProfileScreen/myprofile.dart';
import 'package:restoocom/presentation/views/UiScreens/ResturantsDetails/Resturant/resturant.dart';
import 'package:restoocom/presentation/views/UiScreens/SupportScreen/supportscreen.dart';
class NavController extends GetxController {
  var selectedIndex = 0.obs;

  void changeIndex(int index) {
    selectedIndex.value = index;
  }
}

class NavBar extends StatelessWidget {
  final NavController navController = Get.put(NavController());

  final List<Widget> _screens = [
    const ResturantClass(),
    const ActivityScreen(),
    const FinanceScreen(),
    const MyProfile(),
    const SupportScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scbg,
      body: Obx(() => _screens[navController.selectedIndex.value]),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          selectedItemColor: AppColors.background,
          backgroundColor: Colors.white, // Ensures white background
          type: BottomNavigationBarType.fixed, // Set type to fixed
          elevation: 10, // Optional: adds shadow effect
          currentIndex: navController.selectedIndex.value,
          onTap: (index) => navController.changeIndex(index),
          items: const [
             BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: 'Resturants',
            ),
             BottomNavigationBarItem(
              icon: ImageIcon(AssetImage(Appimages.activity)),
              label: 'Activity',
            ),
             BottomNavigationBarItem(
              icon: ImageIcon(AssetImage(Appimages.financeimage)),
              label: 'Finance',
            ),
             BottomNavigationBarItem(
              icon: ImageIcon(AssetImage(Appimages.myprofile)),
              label: 'My Profile',
            ),
             BottomNavigationBarItem(
              icon: ImageIcon(AssetImage(Appimages.helpcircle)),
              label: 'Support',
            ),
          ],
        ),
      ),
    );
  }
}
