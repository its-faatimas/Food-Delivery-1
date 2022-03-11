import 'package:flutter/material.dart';
import 'package:foodly/core/components/exporting_packages.dart';
import 'package:foodly/core/styles/app_text_style.dart';
import 'package:foodly/widgets/app_bars/add_to_order_app_bar.dart';

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
