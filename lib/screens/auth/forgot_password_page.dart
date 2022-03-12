import 'package:flutter/material.dart';
import 'package:foodly/core/components/exporting_packages.dart';
import 'package:foodly/screens/auth/sent_email_page.dart';

class ForgotPasswordPage extends StatelessWidget {
  ForgotPasswordPage({Key? key}) : super(key: key);
  final TextEditingController _emailController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return AuthBasePage(
      appBarTitle: LocaleKeys.forgot_password.tr(),
      pageTitle: LocaleKeys.forgot_password,
      pageSubtitle: LocaleKeys.enter_email_to_reset,
      centerTitle: false,
      widgets: [
        Form(
          key: _formKey,
          child: AppTextFormField(
            controller: _emailController,
            hint: LocaleKeys.email.tr(),
            inputType: TextInputType.emailAddress,
            inputAction: TextInputAction.done,
            validator: FormValidator.email,
          ),
        ),
        MySizedBox(height: 24.0),
        PrimaryButton(
          onPressed: () {
            if (_formKey.currentState!.validate()) {
              String email = _emailController.text.trim();
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => SentEmailPage(email: email),
                  ));
            }
          },
          label: LocaleKeys.reset_password.tr(),
        ),
      ],
    );
  }
}
