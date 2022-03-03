import 'package:flutter/material.dart';
import 'package:foodly/core/components/exporting_packages.dart';
import 'package:foodly/widgets/dot.dart';

class FoodCardSmall extends StatelessWidget {
  const FoodCardSmall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: MyEdgeInsets.symmetric(h: 7.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            MockData.ingFood,
            fit: BoxFit.cover,
            height: 140.h,
            width: 140.w,
          ).circular(radius: 8.0),
          SizedBox(height: 10.h),
          Text('Cookie Sandwich', style: MyTextStyle.medium(size: 16.0)),
          SizedBox(height: 4.h),
          Row(
            children: [
              _setText('\$\$'),
              Dot().sp(v: 0.0, h: 8.0),
              _setText('Uzbek'),
            ],
          )
        ],
      ),
    );
  }

  Text _setText(String text) => Text(
        text,
        style: MyTextStyle.regular(color: AppColors.darkGrey),
      );
}
