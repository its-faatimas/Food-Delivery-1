import 'package:flutter/material.dart';
import 'package:foodly/core/components/exporting_packages.dart';

class FoodCardMedium extends StatelessWidget {
  const FoodCardMedium({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 254.h,
      width: 200.w,
      child: Card(
        margin: MyEdgeInsets.symmetric(h: 7.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              MockData.ingFood,
              fit: BoxFit.cover,
              height: 160.h,
              width: 200.w,
            ).circular(radius: 10.0),
            SizedBox(height: 14.h),
            Text('Daylight Coffee', style: MyTextStyle.medium(size: 20.0)),
            SizedBox(height: 2.h),
            Text(
              'Daylight Coffee',
              style: MyTextStyle.regular(size: 16.0, color: AppColors.darkGrey),
            ),
            SizedBox(height: 10.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: MyEdgeInsets.symmetric(h: 8.0, v: 4.0),
                  decoration: MyDecoration.circular(
                    color: AppColors.green,
                    radius: 6.0,
                  ),
                  child: Text(
                    '4.5',
                    style: MyTextStyle.semiBold(
                      size: 12.0,
                      color: AppColors.white,
                    ),
                  ),
                ),
                Text('25 min', style: MyTextStyle.medium()),
                Container(
                  height: 4.0,
                  width: 4.0,
                  decoration: MyDecoration.circular(color: AppColors.darkGrey),
                ),
                Text('Free delivery', style: MyTextStyle.medium())
              ],
            ),
          ],
        ),
      ),
    );
  }
}
