import 'package:flutter/material.dart';
import 'package:foodly/core/components/exporting_packages.dart';
import 'package:foodly/core/styles/app_text_style.dart';

class SocialMediaButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String assetIcon;
  final String label;
  Color color;

  SocialMediaButton({
    Key? key,
    required this.onPressed,
    required this.assetIcon,
    required this.label,
    this.color = AppColors.indigo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Row(
        children: [
          SvgPicture.asset(assetIcon),
          MySizedBox(width: 30.0),
          Text(
            label,
            style: AppTextStyle.getButtonStyle(size: getWidth(12.0)),
          ),
        ],
      ),
      style: ElevatedButton.styleFrom(
        primary: color,
        padding: MyEdgeInsets.symmetric(h: 16.0, v: 8.0),
        fixedSize: Size(MediaQuery.of(context).size.width, getHeight(44.0))
      ),
    );
  }
}
