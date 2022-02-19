import 'package:flutter/material.dart';
import 'package:foodly/core/components/exporting_packages.dart';
import 'package:foodly/core/constants/on_boardin_data.dart';
import 'package:foodly/cubit/onboarding/on_boarding_cubit.dart';
import 'package:foodly/models/on_boarding_model.dart';
import 'package:foodly/screens/auth/forgot_password_page.dart';

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
            // TODO AuthHeaderni o`zgartirish kerak
            children: OnBoardingData.list.map((e) => _titles(e)).toList(),
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
                  label: LocaleKeys.get_started.tr().toUpperCase(),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Column _titles(OnBoardingModel e) =>
      Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          TitleSubtitle(title: e.title, subtitle: e.subtitle),
          MySizedBox(height: 199.0),
        ],
      );

  void _onButtonPressed() {
    navigatorPushReplacement(ForgotPasswordPage());
  }
}
