

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:restoocom/core/constants/colors.dart';
import 'package:restoocom/presentation/views/UiScreens/ResturantsDetails/ResturantMenuPage/controller.dart';

class CustomDropDownButtons extends StatelessWidget {
  CustomDropDownButtons({
    super.key,
    required this.screenHeight,
  });
  GuestController guestController = GuestController();
  DateController dateController = DateController();
  TimeController timeController = TimeController();

  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight * 0.067,
      width: double.infinity,
      decoration: BoxDecoration(boxShadow: const [
        BoxShadow(
          color: Colors.black26,
          spreadRadius: .1,
          blurRadius: 1,
          offset: Offset(0.3, 0.3),
        ),
      ], color: Colors.white, borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Guest',
                  style: TextStyle(
                    fontSize: 10,
                  ),
                ),
                Obx(() => SizedBox(
                      height: 20,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 0),
                        child: DropdownButton<String>(
                            value: guestController.selectedGuest.value,
                            items:
                                guestController.gusetlist.map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                            onChanged: (String? newvalue) {
                              guestController.updatedguest(newvalue!);
                            }),
                      ),
                    ))
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 0),
              child: VerticalDivider(
                color: AppColors.bitblack,
                thickness: 1,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Date',
                  style: TextStyle(
                    fontSize: 10,
                  ),
                ),
                Obx(() => SizedBox(
                      height: 20,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 0),
                        child: DropdownButton<String>(
                            value: dateController.selectedate.value,
                            items: dateController.dates.map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                            onChanged: (String? newvalue) {
                              dateController.updateDate(newvalue!);
                            }),
                      ),
                    )),
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 0),
              child: VerticalDivider(
                color: AppColors.bitblack,
                thickness: 1,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Time',
                  style: TextStyle(
                    fontSize: 10,
                  ),
                ),
                Obx(() => SizedBox(
                      height: 20,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 0),
                        child: DropdownButton<String>(
                          value: timeController.selectetime.value,
                          items: timeController.time.map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (String? newvalue) {
                            timeController.updateTime(newvalue!);
                          },
                        ),
                      ),
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
