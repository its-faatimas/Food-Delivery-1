import 'package:flutter/material.dart';
import 'package:foodly/core/components/exporting_packages.dart';

class VerifyPhoneNumberPage extends StatelessWidget {
  const VerifyPhoneNumberPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AuthBasePage(
      appBarTitle: LocaleKeys.sign_up,
      pageTitle: LocaleKeys.get_started,
      pageSubtitle: LocaleKeys.enter_email_to_reset,
      centerTitle: true,
      widgets: [
        PrimaryButton(onPressed: () {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>const HomePage()));
        }, label: LocaleKeys.get_started.tr()),
        MySizedBox(height: 24.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(LocaleKeys.get_started.tr(),
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
