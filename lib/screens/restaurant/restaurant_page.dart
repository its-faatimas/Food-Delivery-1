import 'package:flutter/material.dart';
import 'package:foodly/core/components/exporting_packages.dart';
import 'package:foodly/cubit/restaurant_cubit/restaurant_cubit.dart';

class RestaurantPage extends StatelessWidget {
  const RestaurantPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => RestaurantCubit(),
      child: BlocBuilder<RestaurantCubit, RestaurantState>(
        builder: (ctx, state) {
          RestaurantCubit cubit = ctx.watch();
          return Scaffold();
        },
      ),
    );
  }
}
