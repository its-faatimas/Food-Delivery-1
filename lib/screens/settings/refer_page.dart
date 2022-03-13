import 'package:flutter/material.dart';
import 'package:foodly/core/components/exporting_packages.dart';
import 'package:foodly/widgets/buttons/my_outlined_button.dart';
import 'package:foodly/widgets/cards/url_link_card.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

class ReferPage extends StatelessWidget {
  const ReferPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SimpleAppBar(title: LocaleKeys.refer_to.tr()),
      body: Padding(
        padding: MyEdgeInsets.symmetric(h: 20.0, v: 32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           const MethodInfo(
              title: LocaleKeys.dontHaveAccount,
              illustration: AppIllustrations.giftBox,
              subtitle: LocaleKeys.enter_your_phone_or_email_for_sign_in_or,
              widget: UrlLinkText(),
            ),
            const Spacer(),
            PrimaryButton(
                onPressed: () async {
                  final Uri emailLaunchUri = Uri(
                      scheme: 'mailto',
                      path: 'smith@example.com',
                      queryParameters: {
                        'subject': 'Example Subject & Symbols are allowed!'
                      });
                  await launch(emailLaunchUri.toString());
                },
                label: LocaleKeys.email),
            MySizedBox(height: 20.0),
            MyOutlinedButton(
              onPressed: () => Share.share('Install food delivery app', subject: 'Birnima hjhk'),
              label: 'Others',
              color: AppColors.dark,
            )
          ],
        ),
      ),
    );
  }
}
