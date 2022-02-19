import 'package:flutter/material.dart';
import 'package:foodly/core/components/exporting_packages.dart';

class AuthBasePage extends StatelessWidget {
  final String appBarTitle;
  final String pageTitle;
  final String pageSubtitle;
  final List<Widget> widgets;
  final bool centerTitle;

  const AuthBasePage({
    Key? key,
    required this.appBarTitle,
    required this.pageTitle,
    required this.pageSubtitle,
    required this.centerTitle,
    required this.widgets,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SimpleAppBar(title: appBarTitle),
      body: SingleChildScrollView(
        padding: MyEdgeInsets.symmetric(h: 20.0, v: 24.0),
        child: Column(
          children: [
            TitleSubtitle(
              title: pageTitle,
              subtitle: pageSubtitle,
              centerTitle: centerTitle,
            ),
            Column(
              children: widgets,
            ),
          ],
        ),
      ),
    );
  }
}
