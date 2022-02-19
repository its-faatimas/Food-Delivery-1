import 'package:flutter/material.dart';
import 'package:foodly/core/components/exporting_packages.dart';
import 'package:foodly/widgets/buttons/see_all_button.dart';
import 'package:foodly/widgets/cards/banner.dart';
import 'package:foodly/widgets/cards/food_card_large.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: MyEdgeInsets.symmetric(v: 24.0),
      child: Column(
        children: [

          // Eng yuqoridagi taom rasmlari
          const PopularFoodsCard().sp(v: 0.0),

          // Featured'larni  ko'rish uchun
          const SeeAllButton(title: 'Featured Partners'),

          // Featured list => gorizontal list
          _showList(),
          SizedBox(height: 34.h),

          // Aksiya banneri
          const ActionBanner(),

          // Hamma restoranlar jamoasi orqali ko'rish uchun
          // gorizontal list
          const SeeAllButton(title: 'Best Picks \nRestaurants by team'),

          // restoranlar jamosi listi
          _showList(),

          // Hamma restoranlarniko'rish uchun => Vertikal list
          const SeeAllButton(title: 'All Restaurants'),
          ListView(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: MyEdgeInsets.symmetric(h: 20.0),
            children: const [
              FoodCardLarge(),
              FoodCardLarge(),
              FoodCardLarge(),
            ],
          )
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
