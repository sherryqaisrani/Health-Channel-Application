import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:health_channel_application/utils/colors.dart';
import 'package:health_channel_application/utils/file_path.dart';
import 'package:health_channel_application/utils/routes.dart';
import 'package:health_channel_application/widgets/custome_textfiled.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _emailController = TextEditingController();
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            child: SvgPicture.asset(
              FilePath.firstTopDesign,
            ),
          ),
          Positioned(
            child: SvgPicture.asset(
              FilePath.secondTopDesign,
            ),
          ),
          Positioned(
            top: 140,
            left: 30,
            child: Stack(
              children: [
                GestureDetector(
                  onTap: () => Get.offNamed(
                    Routes.loginPage,
                  ),
                  child: Container(
                    height: 50.h,
                    width: 50.h,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primary,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.arrow_back,
                      color: Theme.of(context).scaffoldBackgroundColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 65.w,
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 190.h,
                    ),
                    Text(
                      'Forgot Password?',
                      style: Theme.of(context)
                          .textTheme
                          .headline3!
                          .copyWith(color: aBlack, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 54.h,
                    ),
                    Text(
                      'To recover your password, you need to enter your registerd email address we will send the recovery code to your email',
                      style: Theme.of(context).textTheme.headline5!.copyWith(
                            color: aBlack,
                          ),
                    ),
                    SizedBox(
                      height: 64.h,
                    ),
                    Text(
                      'Enter your email address',
                      style: Theme.of(context).textTheme.headline5!.copyWith(
                            color: aGrayColor,
                          ),
                    ),
                    SizedBox(
                      height: 22.h,
                    ),
                    CustomTextField(
                      controller: _emailController,
                      filePath: FilePath.email,
                      hintText: 'Email address',
                    ),
                    SizedBox(
                      height: 178.h,
                    ),
                    SizedBox(
                      width: double.maxFinite,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                            vertical: 15.h,
                          ),
                          primary: aPrimaryColor,
                        ),
                        onPressed: () {},
                        child: Text(
                          'Send Activation Code',
                          style:
                              Theme.of(context).textTheme.headline3!.copyWith(
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
