import 'package:flutter/material.dart';
import 'package:foodly/core/components/exporting_packages.dart';

class VerifyPhoneNumberPage extends StatelessWidget {
  const VerifyPhoneNumberPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AuthBasePage(
      appBarTitle: LocaleKeys.signUp,
      pageTitle: LocaleKeys.getStarted,
      pageSubtitle: LocaleKeys.enterEmailToReset,
      centerTitle: true,
      widgets: [
        PrimaryButton(onPressed: () {}, label: LocaleKeys.getStarted.tr()),
        MySizedBox(height: 24.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(LocaleKeys.getStarted.tr(),
                style: MyTextStyle.regular(size: 12.0)),
            TextButton(onPressed: () {}, child: const Text('Resend again'))
          ],
        ),
        MySizedBox(height: 34.0),
        Text(
          _text,
          textAlign: TextAlign.center,
          style: MyTextStyle.regular(
            color: AppColors.darkGrey,
            size: 16.0,
          ),
        )
      ],
    );
  }

  final _text =
      "By Signing up you agree to our Terms Conditions & Privacy Policy.";
}
