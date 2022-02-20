import 'package:flutter/material.dart';
import 'package:foodly/core/components/exporting_packages.dart';
import 'package:foodly/widgets/cards/food_card_xx_small.dart';

class FilterTypeBody extends StatelessWidget {
  const FilterTypeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 134.h,
          child: ListView.builder(
              itemCount: 15,
              padding: MyEdgeInsets.symmetric(h: 13.0),
              scrollDirection: Axis.horizontal,
              itemBuilder: (ctx, index){
            return const FoodCardXXSmall();
          }),
        ),
      ],
    );
  }
}
