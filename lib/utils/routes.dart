import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:health_channel_application/screens/splash_screen.dart';
import 'package:health_channel_application/utils/exceptions.dart';

class RouteGenerate {
  static const splash = '/';
  static const introScreen = 'introscreen';
  static const signUp = 'signup';
  static const login = 'login';
  static const forgetPassword = 'forgetpassword';
  static const confirmPassword = 'confirmpassword';
  static const changePassword = 'changepassword';
  static const homeScreen = 'homepage';

  RouteGenerate._();

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splash:
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case introScreen:
      case signUp:
      case login:
      case forgetPassword:
      case confirmPassword:
      case changePassword:
      case homeScreen:
      default:
        throw RouteException('Route Not Found');
    }
  }
}
