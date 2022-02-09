import 'package:flutter/material.dart';
import 'package:foodly/core/components/exporting_packages.dart';
import 'package:foodly/widgets/app_bars/simple_app_bar.dart';
import 'package:foodly/widgets/buttons/my_outlined_button.dart';

class AddingCreditCardPage extends StatelessWidget {
  const AddingCreditCardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SimpleAppBar(title: LocaleKeys.payment_methods.tr()),
      body: Padding(
        padding: MyEdgeInsets.symmetric(h: 20.0, v: 24.0),
        child: Column(
          children: [
            AuthHeader(
              title: LocaleKeys.add_your_credit,
              subtitle: LocaleKeys.dontHaveAccount,
            ),
            MyTextFormField(
              controller: TextEditingController(),
              hint: 'XXXX XXXX XXXX XXXX',
            ),
            MySizedBox(height: 16.0),
            Row(
              children: [
                Expanded(
                  child: MyTextFormField(
                    controller: TextEditingController(),
                    hint: 'MM/YY',
                  ),
                ),
                MySizedBox(width: 16.0),
                Expanded(
                  child: MyTextFormField(
                    controller: TextEditingController(),
                    hint: 'CVC',
                  ),
                ),
              ],
            ),

            const Spacer(),

            PrimaryButton(onPressed: (){}, label: LocaleKeys.add_your_credit.tr()),
            MySizedBox(height: 16.0),
            MyOutlinedButton(onPressed: (){}, label: 'scan card'),
          ],
        ),
      ),
    );
  }
}
