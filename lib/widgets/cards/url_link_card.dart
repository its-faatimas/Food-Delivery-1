import 'package:flutter/material.dart';
import 'package:foodly/core/components/exporting_packages.dart';

class UrlLinkText extends StatelessWidget {
  const UrlLinkText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 245.w,
      padding: MyEdgeInsets.symmetric(h: 20.0, v: 15.0),
      decoration: MyDecoration.circular(radius: 6.0, color: AppColors.lightGrey),
      child: Row(
        children: [
          SvgPicture.asset(AppIcons.share),
          SizedBox(width: 12.w),
          Text(
            'https://mirrikh.uz//45677',
            style: MyTextStyle.regular(size: 16.0),
          ),
        ],
      ),
    );
  }
}
