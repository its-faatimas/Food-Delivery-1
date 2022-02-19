import 'package:flutter/material.dart';
import 'package:foodly/core/components/exporting_packages.dart';

class AddingSocialAccountPage extends StatelessWidget {
  const AddingSocialAccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SimpleAppBar(title: LocaleKeys.add_social.tr()),
      body: Padding(
        padding: MyEdgeInsets.symmetric(h: 20.0, v: 80.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TitleSubtitle(
              title: LocaleKeys.add_social,
              subtitle: LocaleKeys.add_or_remove_your_location,
              centerTitle: true,
            ),
            AllSocialMediaButtons(),
          ],
        ),
      ),
    );
  }
}
