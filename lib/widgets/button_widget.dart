import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:health_channel_application/utils/colors.dart';

class ButtonWidget extends StatelessWidget {
  String buttonName;
  String filePath;
  ButtonWidget({
    required this.buttonName,
    required this.filePath,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 60.h,
      decoration: BoxDecoration(
        color: aWhite,
        border: Border.all(
          color: Colors.transparent,
        ),
        borderRadius: BorderRadius.circular(
          99.r,
        ),
        boxShadow: const [
          BoxShadow(
            color: aPlaceHolderColor,
            spreadRadius: 4,
            blurRadius: 10,
            offset: Offset(0, 3),
          )
        ],
      ),
      child: Row(
        children: [
          // SizedBox(
          //   width: 24.h,
          // ),
          Padding(
            padding: const EdgeInsets.only(
              left: 24,
            ),
            child: SvgPicture.asset(filePath),
          ),
          SizedBox(
            width: 75.w,
          ),
          Text(
            buttonName,
            style: Theme.of(context).textTheme.headline5!.copyWith(
                  color: ablueish,
                ),
          ),
        ],
      ),
    );
  }
}
