import 'package:flutter/material.dart';
import 'package:foodly/core/components/exporting_packages.dart';

class SentEmailPage extends StatelessWidget {
  final String email;

  const SentEmailPage({Key? key, required this.email}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SimpleAppBar(title: LocaleKeys.resetPassword.tr()),
      body: Padding(
        padding: MyEdgeInsets.symmetric(v: 24.0, h: 20.0),
        child: Column(
          children: [
            AuthHeader(
              title: LocaleKeys.resetPassword,
              subtitle: LocaleKeys.enterEmailToReset,
            ),
            PrimaryButton(onPressed: (){}, label: LocaleKeys.sendAgain),
          ],
        ),
      ),
    );
  }
}
