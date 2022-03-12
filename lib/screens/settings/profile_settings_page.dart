import 'package:flutter/material.dart';
import 'package:foodly/core/components/exporting_packages.dart';

class ProfileSettingsPage extends StatelessWidget {
  const ProfileSettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SimpleAppBar(title: LocaleKeys.profileInformation.tr()),
      body: Padding(
        padding: MyEdgeInsets.symmetric(h: 20, v: 30.0),
        child: Column(
          children: [
            MySizedBox(height: 24.0),
            AppTextFormField(
              controller: TextEditingController(text: 'Hello'),
              hint: LocaleKeys.name.tr().toUpperCase(),
            ),
            MySizedBox(height: 18.0),
            AppTextFormField(
              controller: TextEditingController(text: 'Hello'),
              hint: LocaleKeys.email_address.tr().toUpperCase(),
            ),
            MySizedBox(height: 18.0),
            AppTextFormField(
              controller: TextEditingController(text: '+998 93 123 45 78'),
              hint: LocaleKeys.password.tr().toUpperCase(),
            ),
            const Spacer(),
            PrimaryButton(onPressed: (){}, label: LocaleKeys.locations.tr()),
          ],
        ),
      ),
    );
  }
}
