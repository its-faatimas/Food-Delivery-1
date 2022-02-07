import 'package:flutter/material.dart';
import 'package:foodly/core/components/exporting_packages.dart';
class ReferPage extends StatelessWidget {
  const ReferPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SimpleAppBar(title: LocaleKeys.refer_to.tr()),
    );
  }
}