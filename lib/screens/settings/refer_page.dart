import 'package:flutter/material.dart';
import 'package:foodly/core/components/exporting_packages.dart';
import 'package:foodly/widgets/buttons/my_outlined_button.dart';

class ReferPage extends StatelessWidget {
  const ReferPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SimpleAppBar(title: LocaleKeys.refer_to.tr()),
      body: Padding(
        padding: MyEdgeInsets.symmetric(h: 44.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            MethodInfo(
              title: LocaleKeys.dontHaveAccount,
              illustration: AppIllustrations.giftBox,
              subtitle: LocaleKeys.enter_your_phone_or_email_for_sign_in_or,
              widget: MyOutlinedButton(onPressed: (){}, label: LocaleKeys.refer_to.tr()),
            ),
          ],
        ),
      ),
    );
  }
}
