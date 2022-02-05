import 'package:flutter/material.dart';
import 'package:foodly/core/components/exporting_packages.dart';
import 'package:foodly/core/styles/app_text_style.dart';

class MyTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final String hint;
  TextInputType inputType;
  TextInputAction inputAction;
  bool obscureText;

  MyTextFormField({
    Key? key,
    required this.controller,
    required this.hint,
    this.inputType = TextInputType.text,
    this.inputAction = TextInputAction.next,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: inputType,
      textInputAction: inputAction,
      obscureText: obscureText,

      style: getRegularStyle(color: AppColors.dark, fontSize: 16.0),
      decoration: InputDecoration(
        hintText: hint,
      ),
    );
  }
}
