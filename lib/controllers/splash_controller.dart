import 'dart:async';

import 'package:get/get.dart';
import 'package:health_channel_application/utils/routes.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
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
