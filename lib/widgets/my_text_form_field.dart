import 'package:flutter/material.dart';
import 'package:foodly/core/components/exporting_packages.dart';
import 'package:foodly/core/styles/app_text_style.dart';

class MyTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final String hint;
  TextInputType inputType;
  TextInputAction inputAction;
  bool obscureText;
  Widget? suffix;
  TextCapitalization capitalization;
  FormFieldValidator<String>? validator;

  MyTextFormField({
    Key? key,
    required this.controller,
    required this.hint,
    this.inputType = TextInputType.text,
    this.inputAction = TextInputAction.next,
    this.obscureText = false,
    this.suffix,
    this.capitalization = TextCapitalization.none,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: inputType,
      textInputAction: inputAction,
      obscureText: obscureText,
      textCapitalization: capitalization,
      validator: validator,
      style: AppTextStyle.getRegularStyle(
        color: AppColors.dark,
        fontSize: 16.0,
      ),
      decoration: InputDecoration(
        hintText: hint,
        suffixIcon: suffix,
      ),
    );
  }
}
