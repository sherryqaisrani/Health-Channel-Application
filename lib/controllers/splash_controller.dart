import 'dart:async';

import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:health_channel_application/screens/login_screen.dart';
import 'package:health_channel_application/utils/routes.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    Timer(
      const Duration(
        seconds: 3,
      ),
      () => Get.offNamed(
        Routes.getLoginPage(),
      ),
    );
  }
}
