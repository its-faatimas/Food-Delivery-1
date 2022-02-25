import 'package:flutter/material.dart';
import 'package:foodly/core/components/exporting_packages.dart';
import 'package:foodly/screens/restaurant/restaurant_page.dart';
import 'package:foodly/widgets/dot.dart';

class FoodCardLarge extends StatelessWidget {
  const FoodCardLarge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: MyEdgeInsets.only(bottom: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const PopularFoodsCard(),
          SizedBox(height: 16.h),
          Text("Mc Donald's", style: MyTextStyle.semiBold(size: 20.0)),
          SizedBox(height: 4.h),

          // Restoran menu'si haqida qisqacha ma'lumotlar
          Row(
            children: [
              _setText('\$\$'),
              Dot().sp(v: 0.0, h: 8.0),
              _setText('Chinese'),
              Dot().sp(v: 0.0, h: 8.0),
              _setText('American'),
              Dot().sp(v: 0.0, h: 8.0),
              _setText('Deshi food'),
            ],
          ),
          SizedBox(height: 9.h),

          // Restoran reytingi, yetkazib berish narxlari yoziladi
          Row(
            children: [
              _setSmallText('4.5'),
              _setIcon(assetIcon: AppIcons.rating).sp(v: 0.0, h: 4.5),
              _setSmallText('200+ Ratings'),
              SizedBox(width: 13.w),
              _setTextIcon(AppIcons.clock, '25 Min'),
              Dot().sp(v: 0.0, h: 9.5),
              _setTextIcon(AppIcons.delivery, 'Free'),
            ],
          ),
        ],
      ),
    ).onTap(() {
      CustomNavigator().push(const RestaurantPage());
    });
  }

  // Restoran menu'si haqida qisqacha ma'lumotlar tekstlari uchun
  Text _setText(String text) => Text(
        text,
        style: MyTextStyle.regular(size: 16.0, color: AppColors.darkGrey),
      );

  // Restoran reytingi, yetkazib berish narxlari uchun
  Text _setSmallText(String text) => Text(
        text,
        style: MyTextStyle.medium(size: 12.0),
      );

  // Uchinchi qatordagi tekstli ikonlar uchun
  Row _setTextIcon(String assetIcon, String text) => Row(
        children: [
          _setIcon(assetIcon: assetIcon, color: AppColors.darkGrey),
          SizedBox(width: 6.w),
          _setSmallText(text)
        ],
      );

  // Iconlar uchun
  SvgPicture _setIcon({required String assetIcon, Color? color}) =>
      SvgPicture.asset(assetIcon, color: color);
}
