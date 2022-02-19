import 'package:flutter/material.dart';
import 'package:foodly/core/components/exporting_packages.dart';
import 'package:foodly/core/constants/app_images.dart';

class ActionBanner extends StatelessWidget {
  const ActionBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(AppImages.banner, width: 335.w),
        _setPosition(
          text: Text(
            'Free Delivery for \n1 Month!',
            style: MyTextStyle.medium(size: 28.0),
          ),
        ),
        _setPosition(
          top: 102.0,
          text: Text(
            'You’ve to order at least \$10 for \nusing free delivery for 1 month.',
            style: MyTextStyle.regular(size: 16.0),
          ),
        ),
      ],
    );
  }

  Positioned _setPosition({required Text text, double top = 20.0}) =>
      Positioned(
        left: 20.w,
        top: top.h,
        child: text,
      );
}
