import 'package:flutter/material.dart';

class MyOutlinedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String label;

  const MyOutlinedButton({
    required this.onPressed,
    required this.label,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(onPressed: onPressed, child: Text(label));
  }
}
