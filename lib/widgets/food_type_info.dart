import 'package:flutter/material.dart';
import 'package:foodly/core/components/exporting_packages.dart';
import 'package:foodly/widgets/dot.dart';

class FoodTypeInfo extends StatelessWidget {
  const FoodTypeInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _setText('\$\$'),
        _buildDot(),
        _setText('Chinese'),
        _buildDot(),
        _setText('American'),
        _buildDot(),
        _setText('Deshi Food'),
      ],
    );
  }

  Padding _buildDot() => Dot().sp(v: 0.0, h: 8.0);

  Text _setText(String string) => Text(
        string,
        style: MyTextStyle.regular(size: 16.0, color: AppColors.darkGrey),
      );
}
