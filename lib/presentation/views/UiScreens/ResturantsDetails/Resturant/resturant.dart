


import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:restoocom/core/constants/colors.dart';
import 'package:restoocom/presentation/views/UiScreens/DrawerScreens/customdrawer.dart';
import 'package:restoocom/presentation/widgets/ResturantContainer/customcontainer.dart';
import 'package:restoocom/presentation/widgets/myappbar.dart';
import 'package:restoocom/routes/routes.dart';

class ResturantClass extends StatefulWidget {
  const ResturantClass({super.key});

  @override
  State<ResturantClass> createState() => _ResturantClassState();
}

class _ResturantClassState extends State<ResturantClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scbg,
      endDrawer: const CustomDrawer(),
      appBar: CustomAppBar(
          title: Text(
            "Mcdonald's - Seri Austin DT",
            style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                fontSize: Get.width * 0.055, fontWeight: FontWeight.bold),
          )),
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: GestureDetector(
                  onTap: () {
                    Get.toNamed(Routes.resturantmenu);
                  },
                  child: const CustomContainer(
                    title: "Mcdonald's - Seri Austin DT",
                    subtitlt: "2km away  -  Pick up in 15 min",
                    icon: Icon(
                      Icons.star,
                      size: 10,
                      color: AppColors.background,
                    ),
                    text: "4.9",
                    dottext: ".",
                    secondtext: "Halal",
                  ),
                ),
              );
            },
          )),
    );
  }
}
