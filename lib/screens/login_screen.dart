import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:health_channel_application/utils/colors.dart';
import 'package:health_channel_application/utils/file_path.dart';
import 'package:health_channel_application/widgets/button_widget.dart';
import 'package:health_channel_application/widgets/custome_textfiled.dart';
import 'package:health_channel_application/widgets/devider_container.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _userNameController = TextEditingController();
    final _passwordController = TextEditingController();
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
                Container(
                    height: 50.h,
                    width: 50.h,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primary,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.arrow_back,
                      color: Theme.of(context).scaffoldBackgroundColor,
                    )),
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
                      'Sign In',
                      style: Theme.of(context)
                          .textTheme
                          .headline3!
                          .copyWith(color: aBlack, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Text(
                      'Welcome Back!',
                      style: Theme.of(context).textTheme.headline5!.copyWith(
                            color: aGrayColor,
                          ),
                    ),
                    SizedBox(
                      height: 28.h,
                    ),
                    CustomTextField(
                      controller: _userNameController,
                      filePath: FilePath.person,
                      hintText: 'UserName',
                    ),
                    SizedBox(
                      height: 34.h,
                    ),
                    CustomTextField(
                      controller: _passwordController,
                      filePath: FilePath.lock,
                      hintText: 'Password',
                      surfixPath: FilePath.eye,
                    ),
                    SizedBox(
                      height: 28.h,
                    ),
                    Center(
                      child: Text(
                        'Forgot Password?',
                        style: Theme.of(context)
                            .textTheme
                            .headline6!
                            .copyWith(color: aDotColor),
                      ),
                    ),
                    SizedBox(
                      height: 62.h,
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
                          'Sign UP',
                          style:
                              Theme.of(context).textTheme.headline3!.copyWith(
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 28.h,
                    ),
                    DividerContainer(),
                    SizedBox(
                      height: 28.h,
                    ),
                    ButtonWidget(
                      buttonName: 'Login with Gmail',
                      filePath: FilePath.google,
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    ButtonWidget(
                      buttonName: 'Login with Facebook',
                      filePath: FilePath.facebook,
                    ),
                    SizedBox(
                      height: 28.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RichText(
                          text: TextSpan(
                            text: 'New Member?',
                            style:
                                Theme.of(context).textTheme.headline5!.copyWith(
                                      color: aGrayColor,
                                    ),
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            text: 'Sign up',
                            style:
                                Theme.of(context).textTheme.headline5!.copyWith(
                                      color: aPrimaryColor,
                                    ),
                          ),
                        )
                      ],
                    )
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
