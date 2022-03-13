import 'package:flutter/material.dart';
import 'package:foodly/core/components/exporting_packages.dart';

class MyOutlinedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String label;
  Color? color;

  MyOutlinedButton({
    required this.onPressed,
    required this.label,
    this.color,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      child: Text(label.toUpperCase(),
          style: AppTextStyle.semiBold(color: color ?? AppColors.green)),
      style: OutlinedButton.styleFrom(
        side: BorderSide(color: color ?? AppColors.green, width: 0.5.w),
      ),
    );
  }
}
