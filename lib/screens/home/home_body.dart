import 'package:flutter/material.dart';
import 'package:foodly/core/components/exporting_packages.dart';
import 'package:foodly/widgets/buttons/see_all_button.dart';

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
        ],
      ),
    );
  }
}
