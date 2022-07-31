import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:health_channel_application/utils/colors.dart';
import 'package:health_channel_application/utils/file_path.dart';
import 'package:health_channel_application/widgets/custome_textfiled.dart';

class SignUp extends StatelessWidget {
  SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _userNameController = TextEditingController();
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 190.h,
                  ),
                  Text(
                    'Sign up',
                    style: Theme.of(context)
                        .textTheme
                        .headline3!
                        .copyWith(color: aBlack, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Create an account here',
                    style: Theme.of(context).textTheme.headline5!.copyWith(
                          color: aGrayColor,
                        ),
                  ),
                  CustomTextField(
                    controller: _userNameController,
                    filePath: FilePath.person,
                    hintText: 'UserName',
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
