import 'package:flutter/material.dart';
import 'package:foodly/core/components/exporting_packages.dart';

class RestaurantAppBar extends StatelessWidget with PreferredSizeWidget{
  const RestaurantAppBar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      flexibleSpace: FlexibleSpaceBar(
        title: Icon(Icons.ac_unit),
      ),
    );
  }

  @override
  Size get preferredSize => Size(double.infinity, 56.h);
}