import 'package:flutter/material.dart';
import 'package:foodly/cubit/orders_cubit/orders_cubit.dart';
import 'package:foodly/core/components/exporting_packages.dart';
import 'package:foodly/widgets/tiles/food_tile.dart';

class OrdersPage extends StatelessWidget {
  const OrdersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => OrdersCubit(),
      child: BlocBuilder<OrdersCubit, OrdersState>(
        builder: (ctx, state) {
          OrdersCubit cubit = ctx.watch();
          return SingleChildScrollView(
            child: Column(
              children: [
                _setOrderList('Upcoming orders'),
                SizedBox(height: 14.h),
                _setOrderList('Past orders'),

              ],
            ),
          );
        },
      ),
    );
  }

  Column _setOrderList(String type) {
    return Column(
          children: [
            _setClearButton(type),
            ListView.builder(
              padding: MyEdgeInsets.symmetric(h: 20.0),
              shrinkWrap: true,
              itemCount: 4,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (ctx, i) {
                return const FoodTile();
              },
            )
          ],
        );
  }

  Padding _setClearButton(String title) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title.toUpperCase(),
            style: AppTextStyle.medium(size: 16.0, color: AppColors.darkGrey),
          ),
          CustomTextButton(onPressed: () {}, label: 'CLEAR ALL')
        ],
      ).sp(v: 0.0);
}
