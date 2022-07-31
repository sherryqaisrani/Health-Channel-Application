import 'package:flutter/material.dart';
import 'package:health_channel_application/utils/colors.dart';

class DividerContainer extends StatelessWidget {
  const DividerContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 100,
          height: 2,
          decoration: BoxDecoration(
            color: aPrimaryColor,
            border: Border.all(
              width: 1,
              color: Colors.transparent,
            ),
          ),
        ),
        Container(
          width: 45,
          height: 45,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.transparent,
            border: Border.all(
              width: 1,
              color: aPrimaryColor,
            ),
          ),
          child: Center(
            child: Text(
              'OR',
              style: Theme.of(context).textTheme.headline4!.copyWith(
                    color: aPrimaryColor,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
        ),
        Container(
          width: 100,
          height: 2,
          decoration: BoxDecoration(
            color: aPrimaryColor,
            border: Border.all(
              width: 1,
              color: Colors.transparent,
            ),
          ),
        ),
      ],
    );
  }
}
