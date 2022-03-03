import 'package:flutter/material.dart';
import 'package:foodly/core/components/exporting_packages.dart';
class RatingInfo extends StatelessWidget {
  const RatingInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _setSmallText('4.5'),
        SvgPicture.asset(AppIcons.rating).sp(v: 0.0, h: 4.5),
        _setSmallText('200+ Ratings'),
      ],
    );
  }
  Text _setSmallText(String text) => Text(
    text,
    style: MyTextStyle.medium(size: 12.0),
  );
}
