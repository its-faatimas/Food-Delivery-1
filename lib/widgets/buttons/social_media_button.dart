import 'package:flutter/material.dart';
import 'package:foodly/core/components/exporting_packages.dart';
import 'package:foodly/core/constants/app_colors.dart';

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
          Text(label),
        ],
      ),
      style: ElevatedButton.styleFrom(
        primary: color,
        padding: MyEdgeInsets.symmetric(h: 16.0, v: 8.0),
      ),
    );
  }
}
