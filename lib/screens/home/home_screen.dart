import 'package:flutter/material.dart';
import 'package:foodly/core/components/exporting_packages.dart';
import 'package:foodly/cubit/home/home_page_cubit.dart';
import 'package:foodly/widgets/my_bottom_nav_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return BlocProvider(
      create: (_) => HomePageCubit(),
      child: BlocBuilder<HomePageCubit, HomePageState>(
        builder: (ctx, state) {
          HomePageCubit cubit = ctx.watch();
          return Scaffold(
            body: cubit.pages[cubit.currentIndex],
            bottomNavigationBar: MyBottomNavigationBar(
              onTap: cubit.onPageChanged,
              currentIndex: cubit.currentIndex,
            ),
          );
        },
      ),
    );
  }
}
