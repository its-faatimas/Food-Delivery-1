import 'package:flutter/material.dart';
import 'package:foodly/core/components/exporting_packages.dart';

class FilterPriceBody extends StatelessWidget {
  const FilterPriceBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _setText('Max Delivery Fee').sp(v: 0.0),
        SizedBox(height: 17.h),
        _showPriceList().sp(v: 0.0),
        _buildDivider(),
        _setText('Price Range').sp(v: 24.0),
        _showPriceRange(),
      ],
    );
  }

  Row _showPriceList() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _setPrice(1),
        _setPrice(3),
        _setPrice(5),
        _setPrice(7),
        _setPrice(10),
        _setPrice(11),
      ],
    );
  }

  Divider _buildDivider() {
    return Divider(
      height: 1.h,
      color: AppColors.dark,
      indent: 25.w,
      endIndent: 28.w,
    );
  }

  Text _setText(String text, {Color color = AppColors.dark}) =>
      Text(text, style: MyTextStyle.regular(size: 16.0, color: color));

  _setPrice(int price) => Column(
        children: [
          Text("\$$price", style: MyTextStyle.medium(size: 10.0)),
          _setVerticalDivider(3.0),
          _setVerticalDivider(6.0),
          _setVerticalDivider(8.0),
        ],
      );

  SizedBox _setVerticalDivider(double height) => SizedBox(
        height: height.h,
        child: VerticalDivider(width: 1.w, indent: 2.h, color: AppColors.dark),
      );

  SizedBox _showPriceRange() => SizedBox(
        height: 64.h,
        child: ListView.builder(
            itemCount: 6,
            scrollDirection: Axis.horizontal,
            itemBuilder: (_, __) => _setPriceRange(__)),
      );

  Container _setPriceRange(int range) => Container(
        height: 64.h,
        width: 64.w,
        margin: EdgeInsets.symmetric(horizontal: 8.w),
        alignment: Alignment.center,
        child: _setText(
          '\$'.padRight(range + 1, '\$'),
          color: range == 2 ? AppColors.white : AppColors.dark,
        ),
        decoration: MyDecoration.circular(
          color: range == 2 ? AppColors.green : AppColors.grey,
        ),
      );
}
