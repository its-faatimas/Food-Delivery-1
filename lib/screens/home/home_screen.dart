import 'package:flutter/material.dart';
import 'package:foodly/core/components/exporting_packages.dart';
import 'package:foodly/cubit/home/home_page_cubit.dart';
import 'package:foodly/widgets/app_bottom_nav_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CustomNavigator().init(context);
    return BlocProvider(
      create: (_) => HomePageCubit(),
      child: BlocBuilder<HomePageCubit, HomePageState>(
        builder: (ctx, state) {
          HomePageCubit cubit = ctx.watch();
          return Scaffold(
            appBar: cubit.appBars[cubit.currentIndex],
            body: cubit.pages[cubit.currentIndex],
            bottomNavigationBar: AppBottomNavigationBar(
              onTap: cubit.onPageChanged,
              currentIndex: cubit.currentIndex,
            ),
          );
        },
      ),
    );
  }
}
