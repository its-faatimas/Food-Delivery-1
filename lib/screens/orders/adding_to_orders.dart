import 'package:flutter/material.dart';
import 'package:foodly/core/components/exporting_packages.dart';
import 'package:foodly/core/mock_data/food_data.dart';
import 'package:foodly/core/styles/app_text_style.dart';
import 'package:foodly/models/food_model.dart';
import 'package:foodly/widgets/app_bars/add_to_order_app_bar.dart';
import 'package:foodly/widgets/tiles/food_radio_tile.dart';

class AddingToOrdersPage extends StatelessWidget {
  const AddingToOrdersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            _showTopBar(),
            Column(
              children: [
                TitleSubtitle(
                  title: 'Cookie Sandwich',
                  subtitle: _string,
                  centerTitle: false,
                ),
                const FoodTypeInfo(),
                _showTopCookie(true),
                _showTopCookie(false),
              ],
            ).sp(v: 24.0)
          ],
        ),
      ),
    );
  }

  Container _showTopBar() => Container(
        height: 280.h,
        width: 375.w,
        alignment: Alignment.topLeft,
        padding: MyEdgeInsets.symmetric(h: 20.0, v: 54.0),
        decoration:
            MyDecoration.networkImage(img: MockData.ingFood, radius: 0.0),
        child: CircleAvatar(
          radius: 17.r,
          backgroundColor: AppColors.dark.withOpacity(0.5),
          child: SvgPicture.asset(AppIcons.close, color: AppColors.white),
        ).onTap(() => CustomNavigator().pop()),
      );

  _showTopCookie(bool isTop) => Column(
        children: [
          SizedBox(height: 34.h),
          _setTitle(isTop),
          Column(
            children: FoodData.foodList
                .map((e) => FoodRadioTile(
                    value: e.name, groupValue: FoodData.foodList[0].name, onChanged: (v) {}))
                .toList(),
          )
        ],
      );

  ListView _buildListView() {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: FoodData.foodList.length,
        itemBuilder: (ctx, i) {
          FoodModel food = FoodData.foodList[i];
          return FoodRadioTile(
              value: food.name, groupValue: 'top', onChanged: (v) {});
        });
  }

  Row _setTitle(bool isTop) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TitleText(
            title: isTop ? 'Choice of top Cookie' : 'Choice of bottom Cookie',
            size: 20.0,
          ),
          Chip(
            padding: MyEdgeInsets.symmetric(h: 12.0, v: 6.0),
            backgroundColor: AppColors.orange.withOpacity(0.2),
            label: Text(
              'REQUIRED',
              style: AppTextStyle.medium(color: AppColors.orange),
            ),
          ),
        ],
      );

  final String _string =
      'Shortbread, chocolate turtle cookies, and red velvet. 8 ounces cream cheese, softened.';
}
