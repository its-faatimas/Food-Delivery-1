import 'package:flutter/material.dart';
import 'package:foodly/core/components/exporting_packages.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SimpleAppBar(title: LocaleKeys.forgotPassword.tr()),
      body: Column(
        children: [
          AuthHeader(
            title: LocaleKeys.forgotPassword,
            subtitle: LocaleKeys.enterEmailToReset,
          )
        ],
      ),
    );
  }
}
