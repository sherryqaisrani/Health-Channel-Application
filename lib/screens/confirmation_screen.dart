import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:health_channel_application/utils/colors.dart';
import 'package:health_channel_application/utils/file_path.dart';
import 'package:pinput/pinput.dart';

class ConfirmationCode extends StatelessWidget {
  const ConfirmationCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 60.w,
      height: 56.h,
      textStyle: TextStyle(
        fontSize: 24,
        color: Theme.of(context).colorScheme.primary,
        fontWeight: FontWeight.bold,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: aGrayColor,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(10.r),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(
        color: Theme.of(context).colorScheme.primary,
        width: 3,
      ),
      borderRadius: BorderRadius.circular(10.r),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration!.copyWith(
        color: const Color.fromRGBO(234, 239, 243, 1),
      ),
    );

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
                      height: 200.h,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Send Activation Code',
                          style: Theme.of(context)
                              .textTheme
                              .headline3!
                              .copyWith(
                                  color: aBlack, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Text(
                          'Please enter verification code you’ve received',
                          style:
                              Theme.of(context).textTheme.headline5!.copyWith(
                                    color: aBlack,
                                  ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          'Umesha@gmail.com',
                          style:
                              Theme.of(context).textTheme.headline5!.copyWith(
                                    color: aPrimaryColor,
                                  ),
                        ),
                        SizedBox(
                          height: 24.h,
                        ),
                        Text(
                          'Enter verification code',
                          style: Theme.of(context)
                              .textTheme
                              .headline5!
                              .copyWith(color: aPlaceHolderColor),
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        Pinput(
                          defaultPinTheme: defaultPinTheme,
                          focusedPinTheme: focusedPinTheme,
                          submittedPinTheme: submittedPinTheme,
                          validator: (value) {
                            return value == '1234' ? null : 'Pin is incorrect';
                          },
                          pinputAutovalidateMode:
                              PinputAutovalidateMode.onSubmit,
                          showCursor: true,
                          onCompleted: (pin) => print(pin),
                        ),
                        SizedBox(
                          height: 130.h,
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
                              style: Theme.of(context)
                                  .textTheme
                                  .headline3!
                                  .copyWith(
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        Text(
                          'Resend Code',
                          style: Theme.of(context)
                              .textTheme
                              .headline5!
                              .copyWith(color: aPrimaryColor),
                        )
                      ],
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
