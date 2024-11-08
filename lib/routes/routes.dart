
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:restoocom/presentation/views/UiScreens/AppNavBar/navbar.dart';
import 'package:restoocom/presentation/views/UiScreens/AuthenticationScreens/CreatAccount/signupscreen.dart';
import 'package:restoocom/presentation/views/UiScreens/AuthenticationScreens/ForgetPassword/forgetpassword.dart';
import 'package:restoocom/presentation/views/UiScreens/AuthenticationScreens/ForgetPassword/resetpassword.dart';
import 'package:restoocom/presentation/views/UiScreens/AuthenticationScreens/ForgetPassword/setnewpassword.dart';
import 'package:restoocom/presentation/views/UiScreens/AuthenticationScreens/LogOut/logoutscreen.dart';
import 'package:restoocom/presentation/views/UiScreens/AuthenticationScreens/LoginScreen/loginscreen.dart';
import 'package:restoocom/presentation/views/UiScreens/ResturantsDetails/ResturantMenuPage/resturantmenupage.dart';

class Routes {
  static const String home = "/HomeScreen";
  static const String createaccount = "/CreateAccount";
  static const String loginscreen = "/LoginScreen";
  static const String forgetpassword = "/ForgetPassword";
  static const String resetpassword = "/ResetPasswordScreen";
  static const String setnewpassword = "/SetNewPassword";
  static const String navbar = "/NavBar";
  static const String logout = "/LogOutScreen";
  static const String resturantmenu="/ResturantMenu";

  static List<GetPage> get pages => [
        GetPage(name: loginscreen, page: () => const LoginScreen()),
        GetPage(name: createaccount, page: () => const CreateAccount()),
        GetPage(name: forgetpassword, page: () => const ForgetPassword()),
        GetPage(name: resetpassword, page: () => const ResetPasswordScreen()),
        GetPage(name: setnewpassword, page: () => const SetNewPassword()),
        GetPage(name: navbar, page: () => NavBar()),
        GetPage(name: logout, page: () => const LogOutScreen()),
        GetPage(name: resturantmenu, page: ()=>const ResturantMenu()),
      ];
}
