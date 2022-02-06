import 'package:flutter/material.dart';
import 'package:foodly/core/components/exporting_packages.dart';
import 'package:foodly/screens/auth/verify_phone_number_page.dart';

class EnteringPhonePage extends StatelessWidget {
  const EnteringPhonePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return AuthBasePage(
      appBarTitle: 'Login to Foodly',
      pageTitle: LocaleKeys.get_started,
      pageSubtitle: LocaleKeys.enter_email_to_reset,
      centerTitle: true,
      widgets: [
        MyTextFormField(
          controller: TextEditingController(),
          hint: '+998 93 188-13-33',
        ),
        MySizedBox(height: 159.0),
        PrimaryButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const VerifyPhoneNumberPage()));
            },
            label: LocaleKeys.sign_up)
      ],
    );
  }
}
