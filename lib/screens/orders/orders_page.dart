import 'package:flutter/material.dart';
import 'package:foodly/cubit/orders_cubit/orders_cubit.dart';
import 'package:foodly/core/components/exporting_packages.dart';
import 'package:foodly/widgets/tiles/food_tile.dart';

class OrdersPage extends StatelessWidget {
  const OrdersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => OrdersCubit(),
      child: BlocBuilder<OrdersCubit, OrdersState>(
        builder: (ctx, state) {
          OrdersCubit cubit = ctx.watch();
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ListView(
                padding: MyEdgeInsets.symmetric(h: 20.0),
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: const [FoodTile()],
              )
            ],
          );
        },
      ),
    );
  }
}
