import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:health_channel_application/utils/colors.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  String filePath;
  String hintText;
  String? surfixPath;
  CustomTextField({
    required this.controller,
    required this.filePath,
    required this.hintText,
    this.surfixPath,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 29,
      width: double.maxFinite,
      decoration: const BoxDecoration(
        color: Colors.transparent,
        border: Border(
            bottom: BorderSide(
          width: 2,
          color: aGrayColor,
        )),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            filePath,
          ),
          SizedBox(
            width: 9.w,
          ),
          Container(
            width: .5,
            height: 25,
            margin: const EdgeInsets.only(bottom: 3),
            decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(
                width: 1,
                color: Colors.grey[300]!,
              ),
            ),
          ),
          SizedBox(
            width: 19.w,
          ),
          Expanded(
            child: TextFormField(
              controller: controller,
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.transparent,
                  ),
                ),
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                ),
                hintText: hintText,
                hintStyle: const TextStyle(
                  fontSize: 14,
                  color: aGrayColor,
                ),
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 10,
                ),
              ),
            ),
          ),
          // SvgPicture.asset(
          //   surfixPath!,
          // ),
        ],
      ),
    );
  }
}
