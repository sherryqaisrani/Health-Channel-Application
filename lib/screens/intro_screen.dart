import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:health_channel_application/utils/colors.dart';
import 'package:health_channel_application/utils/file_path.dart';
import 'package:health_channel_application/utils/routes.dart';

class IntroScreen extends StatefulWidget {
  IntroScreen({Key? key}) : super(key: key);

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  PageController pageController = PageController();
  var currentPage = .0;

  @override
  void initState() {
    // TODO: implement initState
    pageController.addListener(() {
      setState(() {
        currentPage = pageController.page!;
        // print(currentPage);
      });
    });
    super.initState();
  }

  void Animate() {
    setState(() {
      currentPage + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    List ImageList = [
      FilePath.introLogoPng,
      FilePath.introLogoPng,
      FilePath.introLogoPng
    ];
    List introList = [
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Venenatis amet amet volutpat massa consectetur lacus.',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Venenatis amet amet volutpat massa consectetur lacus.',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Venenatis amet amet volutpat massa consectetur lacus.'
    ];
    List introName = [
      'Doctor’s Helpline',
      'Doctor’s Names',
      'Doctor’s List',
    ];
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: PageView.builder(
        itemCount: introList.length,
        itemBuilder: (context, index) {
          return SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 97.h,
                  ),
                  Image.asset(
                    ImageList[index],
                    height: 273.h,
                    width: 337.w,
                    fit: BoxFit.fill,
                  ),
                  SizedBox(
                    height: 47.h,
                  ),
                  Text(
                    introName[index],
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  SizedBox(
                    height: 47.h,
                  ),
                  Text(
                    introList[index],
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  SizedBox(
                    height: 100.h,
                  ),
                  Center(
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 600),
                      child: DotsIndicator(
                        position: currentPage,
                        dotsCount: introList.length,
                        decorator: const DotsDecorator(
                          color: aDotColor,
                          activeColor: aWhite,
                          activeSize: Size(
                            18,
                            9,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 63.h,
                  ),
                  SizedBox(
                    width: double.maxFinite,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: aWhite,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(99.r),
                        ),
                        padding: EdgeInsets.symmetric(
                          vertical: 14.h,
                        ),
                      ),
                      onPressed: () => Animate(),
                      child: Text(
                        'Next',
                        style: Theme.of(context)
                            .textTheme
                            .headline3!
                            .copyWith(color: aBlack),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  SizedBox(
                    width: double.maxFinite,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: aWhite,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(99.r),
                          ),
                          padding: EdgeInsets.symmetric(
                            vertical: 14.h,
                          ),
                        ),
                        onPressed: () => Navigator.pushReplacementNamed(
                            context, RouteGenerate.login),
                        child: Text(
                          'Skip',
                          style: Theme.of(context)
                              .textTheme
                              .headline3!
                              .copyWith(color: aBlack),
                        )),
                  )
                ],
              ),
            ),
          );
        },
        scrollDirection: Axis.horizontal,
        controller: pageController,
      ),
    );
  }
}
