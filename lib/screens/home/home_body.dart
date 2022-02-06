import 'package:backdrop/backdrop.dart';
import 'package:flutter/material.dart';
import 'package:foodly/core/components/exporting_packages.dart';

class HomeBody extends StatelessWidget {
   const HomeBody({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BackdropScaffold(
      backgroundColor: AppColors.white,
      backLayerBackgroundColor: AppColors.white,
      backLayer: Center(child: Text('Back'),),
      frontLayer: Center(child: Text('Front'),),
      appBar: BackdropAppBar(

        automaticallyImplyLeading: false,
        title: Text(LocaleKeys.sign_up.tr()),
        actions: [

        ],

      ),

    );
  }
}
