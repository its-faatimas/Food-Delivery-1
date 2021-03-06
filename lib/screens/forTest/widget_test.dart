import 'package:flutter/material.dart';
import 'package:foodly/core/components/exporting_packages.dart';
import 'package:foodly/widgets/buttons/social_media_button.dart';

class WidgetTestPage extends StatefulWidget {
  const WidgetTestPage({Key? key}) : super(key: key);

  @override
  _WidgetTestPageState createState() => _WidgetTestPageState();
}

class _WidgetTestPageState extends State<WidgetTestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: MyEdgeInsets.symmetric(h: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppTextFormField(
                hint: 'Email',
                controller: TextEditingController(),
                inputType: TextInputType.emailAddress,
                capitalization: TextCapitalization.words,
              ),
              SocialMediaButton(
                onPressed: () {},
                assetIcon: AppIcons.facebookRect,
                label: LocaleKeys.connect_with.tr(args: ['Facebook']).toUpperCase(),
              ),
              PrimaryButton(onPressed: (){}, label: LocaleKeys.sign_up.tr().toUpperCase()),
              OutlinedButton(onPressed: (){},
              child: Text(LocaleKeys.get_started.tr().toUpperCase()),
              )
            ],
          ),
        ),
      ),
    );
  }
}
