import 'package:flutter/material.dart';
import 'package:foodly/core/components/exporting_packages.dart';
import 'package:foodly/widgets/buttons/see_all_button.dart';
import 'package:foodly/widgets/cards/banner.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: MyEdgeInsets.symmetric(v: 24.0),
      child: Column(
        children: [
          const PopularFoodsCard(),
          const SeeAllButton(title: 'Featured Partners'),
          _showList(),
          SizedBox(height: 34.h),
          const ActionBanner(),
          const SeeAllButton(title: 'Best Picks \nRestaurants by team'),
          _showList(),
          const SeeAllButton(title: 'All Restaurants'),

        ],
      ),
    );
  }

  SizedBox _showList() {
    return SizedBox(
          height: 254.h,
          child: ListView.builder(
              padding: MyEdgeInsets.symmetric(h: 13.0),
              scrollDirection: Axis.horizontal,
              itemBuilder: (c, i) {
                return FoodCardMedium();
              }),
        );
  }
}
