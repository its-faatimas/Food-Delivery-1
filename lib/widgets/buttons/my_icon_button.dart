import 'package:flutter/material.dart';
import 'package:foodly/core/components/exporting_packages.dart';

class MyIconButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String assetIcon;

  const MyIconButton({
    Key? key,
    required this.onPressed,
    required this.assetIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: SvgPicture.asset(assetIcon),
    );
  }
}
