import 'package:flutter/material.dart';
import 'package:foodly/core/components/exporting_packages.dart';
import 'package:foodly/cubit/restaurant_cubit/restaurant_cubit.dart';
import 'package:foodly/widgets/buttons/my_outlined_button.dart';
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
              slivers: [
                const RestaurantAppBar(),
                _showFoodInfo().toSliver(),
              ],
            ),
          );
        },
      ),
    );
  }

  Column _showFoodInfo() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
      );

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

  _showFeaturedItems() => SizedBox(
    height: 234.h,
    child: ListView.builder(itemBuilder: (ctx, index) {return Container();}),
  );
}
