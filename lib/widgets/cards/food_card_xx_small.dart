import 'package:flutter/material.dart';
import 'package:foodly/core/components/exporting_packages.dart';

class FoodCardXXSmall extends StatelessWidget {
  const FoodCardXXSmall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: MyEdgeInsets.symmetric(h: 7.0),
      child: Column(
        children: [
          Image.network(
            MockData.ingFood,
            fit: BoxFit.cover,
            height: 100.h,
            width: 100.w,
          ).circular(radius: 8.0),
          SizedBox(height: 10.h),
          Text('Burgers',style: MyTextStyle.medium(size: 16.0)),
        ],
      ),
    );
  }
}
