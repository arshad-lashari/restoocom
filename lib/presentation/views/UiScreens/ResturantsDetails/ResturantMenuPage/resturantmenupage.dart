import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restoocom/core/constants/colors.dart';
import 'package:restoocom/core/constants/images.dart';
import 'package:restoocom/presentation/views/UiScreens/ResturantsDetails/ResturantMenuPage/customdropdownbutton.dart';
import 'package:restoocom/presentation/views/UiScreens/ResturantsDetails/ResturantMenuPage/resturantmenucustom.dart';
import 'package:restoocom/presentation/widgets/StackContainer/stackcontainer.dart';
import 'package:restoocom/presentation/widgets/myappbar.dart';
import 'package:restoocom/presentation/widgets/myiconbutton.dart';

class TabControllerWithGetX extends GetxController {
  var selectedIndex = 0.obs;

  void changeTab(int index) {
    selectedIndex.value = index;
  }
}

class ResturantMenu extends StatefulWidget {
  const ResturantMenu({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ResturantMenuState createState() => _ResturantMenuState();
}

class _ResturantMenuState extends State<ResturantMenu>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  final TabControllerWithGetX tabControllerWithGetX =
      Get.put(TabControllerWithGetX());

  @override
  void initState() {
    super.initState();
    tabController = TabController(
        length: 5,
        vsync: this,
        initialIndex: tabControllerWithGetX.selectedIndex.value);

    // Update the GetX controller when the tab is changed via swipe
    tabController.addListener(() {
      if (tabController.indexIsChanging) {
        tabControllerWithGetX.changeTab(tabController.index);
      }
    });
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final List<String> tabNames = [
      "Asian",
      "Western",
      "Local",
      "Non-Halal",
      "Vegetarian"
    ];

    return Scaffold(
      backgroundColor: AppColors.scbg,
      appBar: const CustomAppBar(
        title: Text("McDonald's - Seri Austin DT"),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.33,
                  child: Stack(
                    children: [
                      Positioned(
                        top: 0,
                        left: 0,
                        right: 0,
                        child: Image.asset(
                          Appimages.mcdonalds1,
                          fit: BoxFit.cover,
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.25,
                        ),
                      ),
                      Positioned(
                        left: MediaQuery.of(context).size.width * 0.05,
                        top: MediaQuery.of(context).size.height * 0.16,
                        child: StackContainer(
                          screenHeight: MediaQuery.of(context).size.height,
                          screenWidth: MediaQuery.of(context).size.width,
                        ),
                      ),
                    ],
                  ),
                ),
                const Divider(color: Colors.black54),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 17),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(
                              text: 'Complete your reservation details',
                              style: TextStyle(
                                color: AppColors.bitblack,
                                fontSize: 11,
                              ),
                            ),
                            TextSpan(text: ' '),
                            TextSpan(
                              text: '(required)',
                              style: TextStyle(color: Colors.red, fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.015),
                      CustomDropDownButtons(
                          screenHeight: MediaQuery.of(context).size.height),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.013),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.067,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(width: 1, color: Colors.black),
                        ),
                        child: const Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Icon(Icons.error),
                            ),
                            Flexible(
                              child: Padding(
                                padding: EdgeInsets.only(right: 8.0),
                                child: Text(
                                  "At the moment, there's no availability for Today. The next availability for 3 guests is Tomorrow.",
                                  style: TextStyle(fontSize: 10),
                                  softWrap: true,
                                  overflow: TextOverflow.visible,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.018),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.15,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(Appimages.chicketkard),
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Obx(() {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: TabBar(
                  dividerColor: Colors.transparent,
                  tabAlignment: TabAlignment.start,
                  controller: tabController,
                  isScrollable: true,
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey,
                  indicatorColor: Colors.transparent,
                  tabs: List.generate(tabNames.length, (index) {
                    return Container(
                      height: 26,
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color:
                            tabControllerWithGetX.selectedIndex.value == index
                                ? AppColors.background
                                : Colors.black12,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Tab(text: tabNames[index]),
                    );
                  }),
                ),
              );
            }),
          ),
          SliverFillRemaining(
            child: TabBarView(
              controller: tabController,
              children: [
                GridView.builder(
                  itemCount: 8,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: MediaQuery.of(context).size.height * 0.27,
                    mainAxisSpacing: 5,
                    crossAxisSpacing: 4,
                  ),
                  itemBuilder: (context, index) {
                    return GestureDetector(
  onTap: () {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          insetPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 40),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.68,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Column(
              children: [
                Stack(
                  children: [
                    // Positioned image at the bottom of the Stack
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(5),
                        topRight: Radius.circular(5),
                      ),
                      child: Image.asset(
                        Appimages.chicketkard, // Replace with your asset
                        height: 175,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    // Positioned close button at the top left
                    Positioned(
                      top: 7,
                      left: 7,
                      child: MyIconButton(
                        onPressed: () {
                          Navigator.of(context).pop(); // Close dialog
                        },
                        icon: Icons.close,
                      ),
                    ),
                  ],
                ),
                // Add additional content for the dialog below the image
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Laks', 
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                // Additional dialog content can go here
              ],
            ),
          ),
        );
      },
    );
  },
 
);

                
                
                  },
                ),
                const ResturantMenuCustom(),
                const ResturantMenuCustom(),
                const ResturantMenuCustom(),
                const ResturantMenuCustom(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
