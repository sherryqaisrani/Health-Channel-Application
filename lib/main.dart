import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:health_channel_application/screens/confirmation_screen.dart';
import 'package:health_channel_application/screens/forget_password.dart';
import 'package:health_channel_application/screens/home_screen.dart';
import 'package:health_channel_application/screens/intro_screen.dart';
import 'package:health_channel_application/screens/login_screen.dart';
import 'package:health_channel_application/screens/signup_screen.dart';
import 'package:health_channel_application/screens/splash_screen.dart';
import 'package:health_channel_application/themes/light_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          themeMode: ThemeMode.system,
          title: 'Health Channel',
          theme: lightTheme,
          home: child,
        );
      },
      child: HomePage(),
    );
  }
}
