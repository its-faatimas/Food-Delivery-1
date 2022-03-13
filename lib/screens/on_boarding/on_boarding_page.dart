import 'package:flutter/material.dart';
import 'package:foodly/core/components/exporting_packages.dart';
import 'package:foodly/core/constants/on_boardin_data.dart';
import 'package:foodly/cubit/onboarding/on_boarding_cubit.dart';
import 'package:foodly/core/app_models/on_boarding_model.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CustomNavigator().init(context);
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
          Positioned(
            top: 88.h,
            left: 20.w,
            right: 20.w,
            child: SvgPicture.asset(
              OnBoardingData.list[cubit.currentIndex].img,
            ),
          ),
          PageView(
            physics: const BouncingScrollPhysics(),
            onPageChanged: cubit.onChanged,
            children: OnBoardingData.list.map((e) => _titles(e)).toList(),
          ),
          Positioned(
            bottom: 80.h,
            left: 20.w,
            right: 20.w,
            child: Column(
              children: [
                MySizedBox(height: 150.0),
                PageIndicator(len: 3, currentIndex: cubit.currentIndex),
                MySizedBox(height: 60.0),
                PrimaryButton(
                  onPressed: _onButtonPressed,
                  label: LocaleKeys.get_started.tr().toUpperCase(),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Padding _titles(OnBoardingModel e) => Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          TitleSubtitle(title: e.title, subtitle: e.subtitle),
          MySizedBox(height: 199.0),
        ],
      ).sp(v: 0.0, h: 32.0);

  void _onButtonPressed() async {
    await GetStorage().write('hasStarted', true);
    navigatorPushReplacement(const SignInPage());
  }
}
