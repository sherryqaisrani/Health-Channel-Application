import 'package:get/get.dart';
import 'package:health_channel_application/screens/confirmation_screen.dart';
import 'package:health_channel_application/screens/forget_password.dart';
import 'package:health_channel_application/screens/home_screen.dart';
import 'package:health_channel_application/screens/intro_screen.dart';
import 'package:health_channel_application/screens/login_screen.dart';
import 'package:health_channel_application/screens/signup_screen.dart';
import 'package:health_channel_application/screens/splash_screen.dart';

class Routes {
  //Initial Page Route
  static String initialPage = '/splash';
  static String getInitialPage() => '$initialPage';

  //Login Page Route
  static String loginPage = '/login';
  static String getLoginPage() => '$loginPage';

  //Signup Page Route
  static String signupPage = '/signup';
  static String getSignupPage() => '$signupPage';

  //forget Page Route
  static String forgetPage = '/forget';
  static String getForgetPage() => '$forgetPage';

  //confirmation Page Route
  static String confirmationPage = '/confirmation';
  static String getConfirmationPage() => '$confirmationPage';

  // Home Page Route
  static String homePage = '/home';
  static String getHomePage() => '$homePage';

  static List<GetPage> routes = [
    GetPage(
      transition: Transition.leftToRightWithFade,
      name: initialPage,
      page: () {
        // String? name = Get.parameters['name'];
        return IntroScreen();
      },
    ),
    GetPage(
      transition: Transition.leftToRight,
      name: loginPage,
      page: () {
        // String? userName = Get.parameters['userName'];
        // String? password = Get.parameters['password'];
        return LoginPage(
            // userName: userName!,
            // password: password!,
            );
      },
    ),
    GetPage(
      transition: Transition.leftToRight,
      name: signupPage,
      page: () {
        return SignUp();
      },
    ),
    GetPage(
      transition: Transition.leftToRight,
      name: forgetPage,
      page: () {
        return ForgetPassword();
      },
    ),
    GetPage(
      transition: Transition.leftToRight,
      name: confirmationPage,
      page: () {
        return ConfirmationCode();
      },
    ),
    GetPage(
      transition: Transition.leftToRight,
      name: homePage,
      page: () {
        return HomePage();
      },
    )
  ];
}
