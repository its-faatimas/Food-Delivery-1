import 'package:flutter/material.dart';
import 'package:foodly/cubit/orders_cubit/orders_cubit.dart';
import 'package:foodly/core/components/exporting_packages.dart';

class OrdersPage extends StatelessWidget {
  const OrdersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => OrdersCubit(),
      child: BlocBuilder<OrdersCubit, OrdersState>(
        builder: (ctx, state) {
          OrdersCubit cubit = ctx.watch();
          return Container(
            alignment: Alignment.center,
            child: PrimaryButton(
              onPressed: () {
                name(context);
              },
              label: 'Dialog',
            ),
          );
        },
      ),
    );
  }

  void name(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              content: Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: getHeight(306.0),
                    width: getWidth(317.0),
                    margin: MyEdgeInsets.only(top: 32.0),
                    decoration: MyDecoration.circular(
                      color: AppColors.white,
                      radius: 32.0,
                    ),
                  ),

                  Positioned(
                  left: 0.0,
                  right: 0.0,
                  top: -32.0,
                  child: FloatingActionButton(
                    onPressed: (){},
                  ))
                ],
              ),
            ));
  }
}
