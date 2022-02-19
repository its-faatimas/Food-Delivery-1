import 'package:flutter/material.dart';
import 'package:foodly/core/components/exporting_packages.dart';

class PopularFoodsCard extends StatelessWidget {
  const PopularFoodsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 185.h,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16.w),
            child: PageView.builder(
                itemCount: 4,
                itemBuilder: (ctx, index) {
                  return Image.network(
                    MockData.ingFood,
                    fit: BoxFit.cover,
                  );
                }),
          ),
        ),
        Positioned(
          bottom: 16.h,
          right: 40.w,
          child:  PageIndicator(len: 4, currentIndex: 0),
        ),
      ],
    );
  }
}
