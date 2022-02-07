import 'package:flutter/material.dart';
import 'package:foodly/core/components/exporting_packages.dart';
class LocationsPage extends StatelessWidget {
  const LocationsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SimpleAppBar(title: LocaleKeys.locations.tr()),
    );
  }
}
