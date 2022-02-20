import 'package:flutter/material.dart';
import 'package:foodly/core/components/exporting_packages.dart';

class FilterSortBy extends StatefulWidget {
  const FilterSortBy({Key? key}) : super(key: key);

  @override
  State<FilterSortBy> createState() => _FilterSortByState();
}

class _FilterSortByState extends State<FilterSortBy> {
  String _currentCat = 'Recommended';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _setCategory('Recommended', AppIcons.recommended),
        _setCategory('Fastest Delivery', AppIcons.fastDelivery),
        _setCategory('Most Popular', AppIcons.fire),
      ],
    );
  }

  _setCategory(String ctg, String assetIcon) => Row(
        children: [
          SvgPicture.asset(assetIcon),
          SizedBox(width: 12.w),
          Text(ctg, style: MyTextStyle.medium(size: 16.0)),
          const Spacer(),
          Visibility(
            visible: _currentCat == ctg,
            child: SvgPicture.asset(AppIcons.done, color: AppColors.green),
          ),
        ],
      ).sp(v: 10.0).onTap(() {
        setState(() {
          _currentCat = ctg;
        });
      });
}
