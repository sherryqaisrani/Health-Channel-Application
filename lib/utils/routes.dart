import 'package:get/get.dart';
import 'package:health_channel_application/screens/login_screen.dart';
import 'package:health_channel_application/screens/splash_screen.dart';

class Routes {
  static String initialPage = '/splash';
  static String getInitialPage() => '$initialPage';

  //Login Route
  static String loginPage = '/login';
  static String getLoginPage() => '$loginPage';

  static List<GetPage> routes = [
    GetPage(
      transition: Transition.leftToRightWithFade,
      name: initialPage,
      page: () {
        // String? name = Get.parameters['name'];
        return SplashScreen();
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
    )
  ];
}
