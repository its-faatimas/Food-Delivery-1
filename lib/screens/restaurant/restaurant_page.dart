import 'package:flutter/material.dart';
import 'package:foodly/core/components/exporting_packages.dart';
import 'package:foodly/cubit/restaurant_cubit/restaurant_cubit.dart';
import 'package:foodly/widgets/buttons/my_outlined_button.dart';
import 'package:foodly/widgets/cards/food_card_small.dart';
import 'package:foodly/widgets/delivery_info_widget.dart';
import 'package:foodly/widgets/rating_info.dart';

class RestaurantPage extends StatelessWidget {
  const RestaurantPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => RestaurantCubit(),
      child: BlocBuilder<RestaurantCubit, RestaurantState>(
        builder: (ctx, state) {
          RestaurantCubit cubit = ctx.watch();
          return Scaffold(
            body: CustomScrollView(
              physics: const BouncingScrollPhysics(),
              slivers: [
                const RestaurantAppBar(),
                _showFoodInfo().toSliver(),
                _showFeaturedItems().toSliver(),
                _showCategoryList().toSliver(),
              ],
            ),
          );
        },
      ),
    );
  }

  Padding _showFoodInfo() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 24.h),
          TitleText(title: 'Mayfield Bakery & Cafe'),
          SizedBox(height: 14.h),
          const FoodTypeInfo(),
          SizedBox(height: 16.h),
          const RatingInfo(),
          SizedBox(height: 24.h),
          _showDeliveryInfo(),
          SizedBox(height: 34.h),
          TitleText(title: 'Featured Items', size: 20.0)
        ],
      ).sp(v: 0.0);

  Row _showDeliveryInfo() => Row(
        children: [
          const DeliveryInfoWidget(
            assetIcon: AppIcons.activeDollar,
            title: 'Free',
            subtitle: 'Delivery',
          ),
          SizedBox(width: 20.w),
          const DeliveryInfoWidget(
            assetIcon: AppIcons.activeDollar,
            title: '25',
            subtitle: 'Minutes',
          ),
          const Spacer(),
          SizedBox(
            width: 113.w,
            child: MyOutlinedButton(onPressed: () {}, label: 'take away'),
          ),
        ],
      );

  SizedBox _showFeaturedItems() => SizedBox(
        height: 243.h,
        child: ListView.builder(
            itemCount: 15,
            padding: MyEdgeInsets.only(
                left: 13.0, right: 13.0, top: 18.0, bottom: 34.0),
            scrollDirection: Axis.horizontal,
            itemBuilder: (ctx, index) {
              return const FoodCardSmall();
            }),
      );

  Widget _showCategoryList() => SizedBox(
        height: 60.h,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 15,
            itemBuilder: (ctx, index) {
              return CustomTextButton(onPressed: () {}, label: 'label $index');
            }),
      );
}
