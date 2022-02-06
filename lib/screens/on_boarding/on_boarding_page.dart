import 'package:flutter/material.dart';
import 'package:foodly/core/components/custom_navigator.dart';
import 'package:foodly/core/components/exporting_packages.dart';
import 'package:foodly/core/constants/on_boardin_data.dart';
import 'package:foodly/cubit/onboarding/on_boarding_cubit.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage>
    with TickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
      lowerBound: 0.0,
      upperBound: 339.0,
    );
    _animationController.addListener(() {
      setState(() {});
    });
    _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    CustomNavigator().init(context);
    SizeConfig().init(context);
    return BlocProvider(
      create: (_) => OnBoardingCubit(),
      child: BlocBuilder<OnBoardingCubit, OnBoardingState>(
        builder: (context, state) {
          OnBoardingCubit cubit = context.watch();
          return _buildScaffold(cubit);
        },
      ),
    );
  }

  Scaffold _buildScaffold(OnBoardingCubit cubit) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            onPageChanged: cubit.onChanged,
            children: OnBoardingData.list
                .map((e) => _setTitleAndSubtitle(e.title, e.subtitle))
                .toList(),
          ),
          Positioned(
            bottom: getHeight(80.0),
            left: getWidth(20.0),
            right: getWidth(20.0),
            child: Column(
              children: [
                SvgPicture.asset(
                  OnBoardingData.list[cubit.currentIndex].img,
                  height: _animationController.value,
                ),
                MySizedBox(height: 150.0),
                PageIndicator(len: 3, currentIndex: cubit.currentIndex),
                MySizedBox(height: 60.0),
                PrimaryButton(
                  onPressed: _onButtonPressed,
                  label: LocaleKeys.getStarted.tr().toUpperCase(),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Padding _setTitleAndSubtitle(String title, String subtitle) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          MyText(title, style: MyTextStyle.bold(size: 30.0)),
          MySizedBox(height: 20.0),
          MyText(
            subtitle,
            align: TextAlign.center,
            style: MyTextStyle.regular(color: AppColors.darkGrey),
          ),
          MySizedBox(height: 223.0),
        ],
      ),
    );
  }

  void _onButtonPressed() {
    navigatorPushReplacement(const HomePage());
  }
}
