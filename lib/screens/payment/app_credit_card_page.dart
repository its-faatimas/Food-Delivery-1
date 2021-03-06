import 'package:flutter/material.dart';
import 'package:foodly/core/components/exporting_packages.dart';
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
            TitleSubtitle(
              title: LocaleKeys.add_your_credit.tr(),
              subtitle: LocaleKeys.dontHaveAccount.tr(),
            ),
            AppTextFormField(
              controller: TextEditingController(),
              hint: 'XXXX XXXX XXXX XXXX',
              inputType: TextInputType.number,
            ),
            MySizedBox(height: 16.0),
            Row(
              children: [
                Expanded(
                  child: AppTextFormField(
                    controller: TextEditingController(),
                    hint: 'MM/YY',
                    inputType: TextInputType.number,
                  ),
                ),
                MySizedBox(width: 16.0),
                Expanded(
                  child: AppTextFormField(
                    controller: TextEditingController(),
                    hint: 'CVC',
                    inputType: TextInputType.number,
                  ),
                ),
              ],
            ),
            const Spacer(),
            PrimaryButton(
                onPressed: () {}, label: LocaleKeys.add_your_credit.tr()),
            MySizedBox(height: 16.0),
            MyOutlinedButton(onPressed: () {}, label: 'scan card'),
          ],
        ),
      ),
    );
  }
}
