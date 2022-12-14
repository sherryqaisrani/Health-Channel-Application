import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:health_channel_application/utils/colors.dart';
import 'package:health_channel_application/utils/file_path.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(
            left: 21.w,
            right: 21.w,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 35.h,
                ),
                child: Text(
                  'Hi, Adams',
                  style: Theme.of(context).textTheme.headline3!.copyWith(
                        color: aWhite,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
              SizedBox(
                height: 18.h,
              ),
              Container(
                width: double.maxFinite,
                height: 50.h,
                decoration: BoxDecoration(
                  color: aGrayColor1,
                  borderRadius: BorderRadius.circular(
                    7,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 22.w,
                      ),
                      child: Text(
                        'Search doctor.',
                        style: Theme.of(context).textTheme.headline5!.copyWith(
                              color: aGrayColor2,
                            ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10.h),
                      width: 65.w,
                      height: 57.h,
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.background,
                        borderRadius: BorderRadius.circular(13),
                      ),
                      child: SvgPicture.asset(
                        FilePath.search,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 70.h,
              ),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    width: 380.w,
                    height: 146.h,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.background,
                      borderRadius: BorderRadius.circular(
                        10.r,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 14.w,
                        vertical: 10,
                      ),
                      child: Text(
                        'Healthy Channel\nWill Help you to\nImprove your\nHealth',
                        style: Theme.of(context).textTheme.headline4!.copyWith(
                              color: aPrimaryColor,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: -20,
                    top: -60,
                    child: Image.asset(
                      FilePath.homeScreenDr,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Categories',
                    style: Theme.of(context).textTheme.headline4!.copyWith(
                          color: aWhite,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                  Container(
                    height: 33.h,
                    width: 33.w,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: aWhite,
                        width: 2,
                      ),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.arrow_forward,
                      color: aWhite,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 38.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(
                  4,
                  (index) => Container(
                    height: 76.h,
                    width: 76.w,
                    decoration: const BoxDecoration(
                      color: Colors.transparent,
                      boxShadow: [
                        BoxShadow(
                          spreadRadius: 0,
                          color: aWhite,
                          blurRadius: 7,
                          offset: Offset(4, 4),
                        ),
                        BoxShadow(
                          spreadRadius: 0,
                          blurRadius: 0,
                          color: aPrimaryColor,
                          offset: Offset(-4, -4),
                        ),
                      ],
                    ),
                    child: Container(
                      decoration: const BoxDecoration(
                        color: aPrimaryColor,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            FilePath.heart,
                          ),
                          SizedBox(
                            height: 2.5.h,
                          ),
                          Text(
                            'Heart',
                            style:
                                Theme.of(context).textTheme.bodyText2!.copyWith(
                                      color: aWhite,
                                    ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 38.h,
              ),
              Text(
                'Specialist',
                style: Theme.of(context).textTheme.headline4!.copyWith(
                      color: aWhite,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
              ),
              SizedBox(
                height: 24.h,
              ),
              Container(
                height: 137.h,
                width: 381.w,
                decoration: const BoxDecoration(
                  color: aPrimaryColor,
                  boxShadow: [
                    BoxShadow(
                      color: aWhite,
                      offset: Offset(0, 1),
                      blurRadius: 4,
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      FilePath.doctorImage,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 7.h,
                        ),
                        Text(
                          'DR. Rathnayake',
                          style:
                              Theme.of(context).textTheme.headline5!.copyWith(
                                    color: aWhite,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                  ),
                        ),
                        SizedBox(
                          height: 7.h,
                        ),
                        Text(
                          'physical specialist',
                          style:
                              Theme.of(context).textTheme.bodyText1!.copyWith(
                                    color: aBlack,
                                  ),
                        ),
                        SizedBox(
                          height: 13.h,
                        ),
                        Text(
                          'suwas Hospital',
                          style:
                              Theme.of(context).textTheme.bodyText1!.copyWith(
                                    color: aBlack,
                                    fontWeight: FontWeight.w400,
                                  ),
                        ),
                        SizedBox(
                          height: 9.h,
                        ),
                        SvgPicture.asset(
                          FilePath.stars,
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        right: 20.w,
                      ),
                      child: Container(
                        height: 62.h,
                        width: 64.w,
                        decoration: const BoxDecoration(
                          color: aPrimaryColor,
                          boxShadow: [
                            BoxShadow(
                              color: aWhite,
                              offset: Offset(3.15, 3.15),
                              blurRadius: 5.51,
                              spreadRadius: 0,
                            ),
                            BoxShadow(
                              color: aWhite,
                              offset: Offset(-2.36, -2.36),
                              blurRadius: 4.73,
                              spreadRadius: 0,
                            ),
                          ],
                        ),
                        child: Center(
                          child: SvgPicture.asset(
                            FilePath.phone,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
