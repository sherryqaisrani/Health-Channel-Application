import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:health_channel_application/utils/colors.dart';

final lightTheme = ThemeData.light().copyWith(
  primaryColor: aPrimaryColor,
  scaffoldBackgroundColor: aWhite,
  backgroundColor: aPlaceHolderColor,
  textTheme: GoogleFonts.redHatDisplayTextTheme(
    const TextTheme().copyWith(
      headline1: TextStyle(
        fontSize: 48.sp,
        color: aBlack,
      ),
      headline2: TextStyle(
          fontSize: 24.sp, fontWeight: FontWeight.bold, color: aWhite),
      headline3: TextStyle(
        fontSize: 22.sp,
        color: aWhite,
      ),
      headline4: TextStyle(
        fontSize: 16.sp,
        color: aWhite,
      ),
      headline5: TextStyle(
        fontSize: 14.sp,
        color: aWhite,
      ),
      headline6: TextStyle(
        fontSize: 12.sp,
        color: aWhite,
      ),
      bodyText1: TextStyle(
        fontSize: 11.sp,
        color: aBlack,
      ),
      bodyText2: TextStyle(
        fontSize: 9.sp,
        color: aPrimaryColor,
      ),
      button: TextStyle(
        fontSize: 17.sp,
        fontWeight: FontWeight.bold,
      ),
      subtitle1: const TextStyle(
        color: aBlack,
      ),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    hintStyle: TextStyle(
      fontSize: 12.sp,
      color: aGrayColor,
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      primary: aWhite,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(99.r),
      ),
      padding: EdgeInsets.symmetric(
        vertical: 14.h,
      ),
    ),
  ),
  colorScheme: const ColorScheme.light(
    primary: aPrimaryColor,
    background: aWhite,
  ),
);
