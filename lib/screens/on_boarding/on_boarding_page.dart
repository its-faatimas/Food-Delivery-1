import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodly/core/components/exporting_packages.dart';
import 'package:foodly/widgets/my_sized_box.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  MyText('text'),
                  MySizedBox(height: 20.0),
                  MyText('text'),
                  MySizedBox(height: 223.0),
                ],
              ),
            ],
          ),
          Positioned(
            bottom: getHeight(80.0),
            left: getWidth(20.0),
            right: getWidth(20.0),
            child: Column(
              children: [
                SvgPicture.asset(AppIllustrations.illustration1),
                MySizedBox(height: 150.0),
                const PageIndicator(len: 3, currentIndex: 0),
                MySizedBox(height: 60.0),
                PrimaryButton(
                  onPressed: () {},
                  label: 'GET STARTED',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
