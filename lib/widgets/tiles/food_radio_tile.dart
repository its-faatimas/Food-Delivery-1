import 'package:flutter/material.dart';
import 'package:foodly/core/components/exporting_packages.dart';
import 'package:foodly/core/styles/app_text_style.dart';

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
  Widget build(BuildContext context) => Column(
        children: [
          Row(
            children: [
              _setRadio(),
              SizedBox(width: 14.w),
              Text(value,style: AppTextStyle.medium(size: 16.0))
            ],
          ),
          Divider(height: 1.h)
        ],
      ).onTap(() { });

  Container _setRadio() => Container(
        margin: MyEdgeInsets.symmetric(v: 14.0),
        height: 24.h,
        width: 24.h,
        alignment: Alignment.center,
        decoration: MyDecoration.circular(
          border: Border.all(
            color: value == groupValue ? AppColors.green : AppColors.grey,
          ),
        ),
        child: CircleAvatar(
          backgroundColor:
              value == groupValue ? AppColors.green : AppColors.white,
          radius: 9.r,
        ),
      );
}
