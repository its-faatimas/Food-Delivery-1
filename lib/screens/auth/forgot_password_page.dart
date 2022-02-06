import 'package:flutter/material.dart';
import 'package:foodly/core/components/exporting_packages.dart';

class ForgotPasswordPage extends StatelessWidget {
  ForgotPasswordPage({Key? key}) : super(key: key);
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SimpleAppBar(title: LocaleKeys.forgotPassword.tr()),
      body: Padding(
        padding: MyEdgeInsets.symmetric(h: 20.0, v: 24.0),
        child: Column(
          children: [
            AuthHeader(
              title: LocaleKeys.forgotPassword,
              subtitle: LocaleKeys.enterEmailToReset,
            ),
            MyTextFormField(
              controller: _emailController,
              hint: LocaleKeys.emailAddress.tr(),
              inputType: TextInputType.emailAddress,
              inputAction: TextInputAction.done,
              validator: FormValidator.email,
            ),
            MySizedBox(height: 24.0),
            PrimaryButton(
              onPressed: () {},
              label: LocaleKeys.resetPassword.tr(),
            )
          ],
        ),
      ),
    );
  }
}
