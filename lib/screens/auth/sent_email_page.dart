import 'package:flutter/material.dart';
import 'package:foodly/core/components/exporting_packages.dart';

class SentEmailPage extends StatelessWidget {
  final String email;

  const SentEmailPage({Key? key, required this.email}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AuthBasePage(
        appBarTitle: LocaleKeys.reset_password.tr(),
        pageTitle: LocaleKeys.enter_email_to_reset,
        pageSubtitle: LocaleKeys.enter_email_to_reset,
        centerTitle: false,
        widgets: [
          PrimaryButton(onPressed: () {}, label: LocaleKeys.send_again),
        ]);
  }
}
