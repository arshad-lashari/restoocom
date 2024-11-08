import 'package:get/get.dart';

class Obscurecontroller extends GetxController {
  // Observable variable for the visibility of the password
  var obscureText = true.obs;

  // Function to toggle the visibility
  void toggleObscureText() {
    obscureText.value = !obscureText.value;
  }
}
