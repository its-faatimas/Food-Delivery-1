import 'package:flutter/material.dart';
import 'package:foodly/core/components/exporting_packages.dart';

class SentEmailPage extends StatelessWidget {
  final String email;

  const SentEmailPage({Key? key, required this.email}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AuthBasePage(
        appBarTitle: LocaleKeys.resetPassword.tr(),
        pageTitle: LocaleKeys.resetPassword,
        pageSubtitle: LocaleKeys.enterEmailToReset,
        centerTitle: false,
        widgets: [
          PrimaryButton(onPressed: () {}, label: LocaleKeys.sendAgain),
        ]);
  }
}
