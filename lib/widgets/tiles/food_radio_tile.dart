import 'package:flutter/material.dart';
import 'package:foodly/core/components/exporting_packages.dart';

class FoodRadioTile extends StatelessWidget {
  final String value;
  final String groupValue;
  final ValueChanged<Object?> onChanged;

  const FoodRadioTile({
    Key? key,
    required this.value,
    required this.groupValue,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => RadioListTile(
        value: value,
        groupValue: groupValue,
        onChanged: onChanged,
        title: Text(value),
        contentPadding: MyEdgeInsets.symmetric(v: 14.0),
      );
}
