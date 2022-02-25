import 'package:flutter/material.dart';
import 'package:foodly/core/components/exporting_packages.dart';

class FoodImagePageView extends StatelessWidget {
  const FoodImagePageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 280.h,
          child: PageView.builder(
            itemCount: 5,
            controller: PageController(),
            itemBuilder: (ctx, i) {
            return Image.network(MockData.ingFood, fit: BoxFit.cover);
          }),
        ),
        Positioned(
          right: 20.w,
          bottom: 20.h,
          child: PageIndicator(len: 5, currentIndex: 0),
        )
      ],
    );
  }
}
