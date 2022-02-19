import 'package:flutter/material.dart';
import 'package:foodly/core/components/exporting_packages.dart';
import 'package:foodly/widgets/buttons/custom_text_button.dart';
class SeeAllButton extends StatelessWidget {
  final String title;
  const SeeAllButton({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MyEdgeInsets.only(top: 34.0, right: 20.0, left: 20.0, bottom: 24.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: MyTextStyle.medium(size: 24.0)),
          CustomTextButton(onPressed: (){}, label: 'See all'),
        ],
      ),
    );
  }
}
