import 'package:flutter/material.dart';
import 'package:foodly/core/components/exporting_packages.dart';

class MyIconButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String assetIcon;
  Color? color;

  MyIconButton({
    Key? key,
    required this.onPressed,
    required this.assetIcon,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      constraints: const BoxConstraints(),
      icon: SvgPicture.asset(assetIcon, color: color),
    );
  }
}
