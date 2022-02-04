import 'package:flutter/material.dart';

class MyOutlinedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String label;

  const MyOutlinedButton({required this.onPressed, required this.label});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return OutlinedButton(onPressed: onPressed, child: Text(label));
  }
}
