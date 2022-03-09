import 'package:flutter/material.dart';
import 'package:foodly/core/components/exporting_packages.dart';
import 'package:foodly/widgets/app_bars/add_to_order_app_bar.dart';

class AddingToOrdersPage extends StatelessWidget {
  const AddingToOrdersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          const AddToOrdersAppBar(),
          SizedBox(height: 24.h).toSliver(),
          TitleSubtitle(
            title: 'Cookie Sandwich',
            subtitle: _string,
            // centerTitle: false,
          ).toSliver(),
        ],
      ),
    );
  }

  final String _string ='Shortbread, chocolate turtle cookies, and red velvet. 8 ounces cream cheese, softened.';

}
