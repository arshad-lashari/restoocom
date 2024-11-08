import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:restoocom/core/constants/colors.dart';
import 'package:restoocom/presentation/controllers/tabbarmenucontroller.dart';
import 'package:restoocom/presentation/views/UiScreens/ResturantsDetails/ResturantMenuPage/resturantmenucustom.dart';


class TabBarViewResturantMenu extends StatelessWidget {
   TabBarViewResturantMenu({
    super.key,
    required this.tabController,
    required this.tabControllerWithGetX,
  });

  final TabController tabController;
  final TabControllerWithGetX tabControllerWithGetX;
final List<String> tabNames = [
      "Asian",
      "Western",
      "Local",
      "Non-Halal",
      "Vegetarian"
    ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(() {
          return TabBar(
            controller: tabController,
            tabAlignment: TabAlignment.start,
            isScrollable: true,
            dividerColor: Colors.transparent,
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            indicatorColor: Colors.transparent,
            tabs: List.generate(tabNames.length, (index) {
              return Container(
                height: 26,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: tabControllerWithGetX.selectedIndex.value == index
                      ? AppColors.background
                      : Colors.black12,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Tab(text: tabNames[index]),
              );
            }),
          );
        }),
        SizedBox(height: MediaQuery.of(context).size.height * 0.018),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.25,
          child: TabBarView(
            controller: tabController,
            children: List.generate(
              tabNames.length,
              (index) => const ResturantMenuCustom(),
            ),
          ),
        ),
      ],
    );
  }
}
