import 'package:flutter/material.dart';
import 'package:foodly/core/components/exporting_packages.dart';

class SimpleAppBar extends StatelessWidget with PreferredSizeWidget {
  final String title;

  const SimpleAppBar({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(title: Text(title));
  }

  @override
  Size get preferredSize => Size(double.infinity, 44.h);
}
