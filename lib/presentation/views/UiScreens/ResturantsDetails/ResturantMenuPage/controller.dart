import 'package:get/get.dart';

class GuestController extends GetxController {
  var selectedGuest = 'Guest'.obs;
  final List<String> gusetlist = [
    'Guest',
    "Guest2",
    "Guest3",
    "Guest4",
    "Guest5",
    "Guest6",
  ];

  void updatedguest(String newGuest) {
    selectedGuest.value = newGuest;
  }
}



class DateController extends GetxController{
  var selectedate='Sat,2 AUG'.obs;


  final List<String> dates=[
    'Sat,2 AUG',
    'Sun,3 AUG',
    'Mon,4 AUG',
    'Tue,5 AUG',
    'Wed,6 AUG',
    'Thu,7 AUG',
    'Fri,8 AUG',
  ];
void updateDate(String newvalue){
  selectedate.value=newvalue;
}








}
class TimeController extends GetxController{
  var selectetime='12 PM'.obs;


  final List<String> time=[
    '12 PM',
    '1 PM',
    '2 PM',
    '3 PM',
    '4 PM',
    '5 PM',
  ];
void updateTime(String newvalue){
  selectetime.value=newvalue;
}}