import 'package:flutter/material.dart';
import 'package:foodly/core/components/exporting_packages.dart';
import 'social_media_button.dart';

class AllSocialMediaButtons extends StatelessWidget {
  const AllSocialMediaButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Facebook Button
        SocialMediaButton(
          onPressed: () {},
          assetIcon: AppIcons.facebookRect,
          label: LocaleKeys.connect_with.tr(args: ['facebook']).toUpperCase(),
        ),
        MySizedBox(height: 16.0),
        // Google Button
        SocialMediaButton(
          color: AppColors.blue,
          onPressed: () {},
          assetIcon: AppIcons.googleRect,
          label: LocaleKeys.connect_with.tr(args: ['google']).toUpperCase(),
        ),
      ],
    );
  }
}
