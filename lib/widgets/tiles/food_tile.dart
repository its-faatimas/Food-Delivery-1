import 'package:flutter/material.dart';
import 'package:foodly/core/components/exporting_packages.dart';
import 'package:foodly/widgets/dot.dart';

class FoodTile extends StatelessWidget {
  const FoodTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110.h,
      width: 332.w,
      decoration: MyDecoration.circular(radius: 8.0, color: AppColors.white),
      child: Row(
        children: [

          // Image
          Image.network(
            MockData.ingFood,
            width: 110.h,
            fit: BoxFit.cover,
          ).circular(radius: 8.0),
          SizedBox(width: 18.w),

          // Taom haqidagi ma'lumotlar
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Mc Donalds', style: MyTextStyle.medium(size: 18.0)),
                SizedBox(height: 6.h),
                Text(
                  'Shortbread, chocolate turtle cookies, and red velvet.',
                  style: MyTextStyle.regular(
                    size: 16.0,
                    color: AppColors.darkGrey,
                  ),
                ),
                const Spacer(),
                Row(
                  children: [
                    _buildText(text: '\$\$'),
                    Dot().sp(v: 0.0, h: 8.0),
                    _buildText(text: 'Chinese'),
                    const Spacer(),
                    _buildText(text: 'USD 7.4', color: AppColors.green)
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Text _buildText({required String text, Color color = AppColors.darkGrey}) {
    return Text(text, style: MyTextStyle.medium(color: color));
  }
}
